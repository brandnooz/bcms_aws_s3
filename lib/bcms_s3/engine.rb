require 'browsercms'
require 'bcms_s3/s3_module'
require 'cms/attachments/s3_strategy'

module BcmsS3
  class Engine < ::Rails::Engine
    isolate_namespace BcmsS3
    include Cms::Module
    
    config.before_configuration do
      s3_config_file = "#{Rails.root}/config/s3.yml"
      if File.exists?(s3_config_file)
        settings = YAML.load(File.read(s3_config_file))
        config.cms.attachments.s3_credentials = settings[:s3_credentials]
        config.cms.attachments.s3_host_alias = settings[:s3_host_alias]
        config.cms.attachments.url = settings[:url]
      end
      config.cms.attachments.storage = :s3 
    end
    
    config.to_prepare do
      Cms::ContentController.send(:include, Cms::S3::ContentController)
      Cms::ApplicationController.send(:include, Cms::S3::ApplicationController)

      # ensure heroku caching disabled by default
      Cms::S3.heroku_caching = false if Cms::S3.heroku_caching.nil?
      
      # function to set domain prefix without url to 'www' is disabled by default
      Cms::S3.www_domain_prefix = false if Cms::S3.www_domain_prefix.nil?

    end
  end
end

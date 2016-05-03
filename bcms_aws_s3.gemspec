# -*- encoding: utf-8 -*-
# stub: bcms_aws_s3 1.0.4 ruby lib

Gem::Specification.new do |s|
  s.name = "bcms_aws_s3"
  s.version = "1.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["BrowserMedia", "Anthony Underwood", "Neil Middleton"]
  s.date = "2014-02-08"
  s.description = "A BrowserCMS module that stores attachments on Amazon S3 rather than on the filesystem."
  s.email = "github@browsermedia.com"
  s.extra_rdoc_files = ["README.markdown"]
  s.files = ["Gemfile", "README.markdown", "app/assets", "app/assets/images", "app/assets/images/bcms_s3", "app/assets/javascripts", "app/assets/javascripts/bcms_s3", "app/assets/javascripts/bcms_s3/application.js", "app/assets/stylesheets", "app/assets/stylesheets/bcms_s3", "app/assets/stylesheets/bcms_s3/application.css", "app/controllers", "app/controllers/bcms_s3", "app/controllers/bcms_s3/application_controller.rb", "app/helpers", "app/helpers/bcms_s3", "app/helpers/bcms_s3/application_helper.rb", "config/routes.rb", "lib/bcms_aws_s3.rb", "lib/bcms_s3", "lib/bcms_s3/engine.rb", "lib/bcms_s3/routes.rb", "lib/bcms_s3/s3_module.rb", "lib/bcms_s3/version.rb", "lib/cms", "lib/cms/attachments", "lib/cms/attachments/s3_strategy.rb", "lib/tasks", "lib/tasks/bcms_s3_tasks.rake", "test/dummy", "test/test_helper.rb", "test/unit", "test/unit/bcms_s3_test.rb"]
  s.homepage = "https://github.com/browsermedia/bcms_s3"
  s.rubyforge_project = "bcms_aws_s3"
  s.rubygems_version = "2.2.2"
  s.summary = "An S3 module for BrowserCMS"
  s.test_files = ["test/dummy", "test/test_helper.rb", "test/unit", "test/unit/bcms_s3_test.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<aws-sdk>, [">= 1.5.0"])
      s.add_runtime_dependency(%q<browsercms>, ["< 4.1.0", ">= 3.5.0.rc1"])
    else
      s.add_dependency(%q<aws-sdk>, [">= 1.5.0"])
      s.add_dependency(%q<browsercms>, ["< 4.1.0", ">= 3.5.0.rc1"])
    end
  else
    s.add_dependency(%q<aws-sdk>, [">= 1.5.0"])
    s.add_dependency(%q<browsercms>, ["< 4.1.0", ">= 3.5.0.rc1"])
  end
end

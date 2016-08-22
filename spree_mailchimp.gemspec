# -*- encoding: utf-8 -*-
# stub: spree_mailchimp 3.0.9 ruby lib

Gem::Specification.new do |s|
  s.name = "spree_mailchimp"
  s.version = "3.0.9"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["XZiy Vash"]
  s.date = "2016-08-22"
  s.description = "Adds a mailchimp settings section to admin to push new customers to a given mailchimp list if they opt-in during checkout."
  s.email = ["xziy@ya.ru"]
  s.files = ["MIT-LICENSE", "Rakefile", "app/assets", "app/assets/images", "app/assets/images/spree_mailchimp", "app/assets/javascripts", "app/assets/javascripts/spree_mailchimp", "app/assets/javascripts/spree_mailchimp/application.js", "app/assets/stylesheets", "app/assets/stylesheets/spree_mailchimp", "app/assets/stylesheets/spree_mailchimp/application.css", "app/controllers", "app/controllers/spree", "app/controllers/spree/admin", "app/controllers/spree/admin/mailchimp_controller.rb", "app/helpers", "app/helpers/spree_mailchimp", "app/helpers/spree_mailchimp/application_helper.rb", "app/models", "app/models/spree", "app/models/spree/app_configuration_decorator.rb", "app/models/spree/user_decorator.rb", "app/overrides", "app/overrides/spree", "app/overrides/spree/layouts", "app/overrides/spree/layouts/admin", "app/overrides/spree/layouts/admin/mailchimp_menu_item.html.erb.deface", "app/overrides/spree/shared", "app/overrides/spree/shared/_user_form", "app/overrides/spree/shared/_user_form/mailchimp_opt_in.html.erb.deface", "app/views", "app/views/spree", "app/views/spree/admin", "app/views/spree/admin/mailchimp", "app/views/spree/admin/mailchimp/edit.html.erb", "config/locales", "config/locales/en.yml", "config/routes.rb", "db/migrate", "db/migrate/20160706162425_add_mailchimp_opt_in_to_users.rb", "lib/generators", "lib/generators/spree_mailchimp", "lib/generators/spree_mailchimp/install_generator.rb", "lib/spree_mailchimp", "lib/spree_mailchimp.rb", "lib/spree_mailchimp/engine.rb", "lib/spree_mailchimp/version.rb", "test/dummy", "test/dummy/README.rdoc", "test/dummy/Rakefile", "test/dummy/app", "test/dummy/app/assets", "test/dummy/app/assets/images", "test/dummy/app/assets/javascripts", "test/dummy/app/assets/javascripts/application.js", "test/dummy/app/assets/stylesheets", "test/dummy/app/assets/stylesheets/application.css", "test/dummy/app/controllers", "test/dummy/app/controllers/application_controller.rb", "test/dummy/app/controllers/concerns", "test/dummy/app/helpers", "test/dummy/app/helpers/application_helper.rb", "test/dummy/app/mailers", "test/dummy/app/models", "test/dummy/app/models/concerns", "test/dummy/app/views", "test/dummy/app/views/layouts", "test/dummy/app/views/layouts/application.html.erb", "test/dummy/bin", "test/dummy/bin/bundle", "test/dummy/bin/rails", "test/dummy/bin/rake", "test/dummy/bin/setup", "test/dummy/config", "test/dummy/config.ru", "test/dummy/config/application.rb", "test/dummy/config/boot.rb", "test/dummy/config/database.yml", "test/dummy/config/environment.rb", "test/dummy/config/environments", "test/dummy/config/environments/development.rb", "test/dummy/config/environments/production.rb", "test/dummy/config/environments/test.rb", "test/dummy/config/initializers", "test/dummy/config/initializers/assets.rb", "test/dummy/config/initializers/backtrace_silencers.rb", "test/dummy/config/initializers/cookies_serializer.rb", "test/dummy/config/initializers/filter_parameter_logging.rb", "test/dummy/config/initializers/inflections.rb", "test/dummy/config/initializers/mime_types.rb", "test/dummy/config/initializers/session_store.rb", "test/dummy/config/initializers/wrap_parameters.rb", "test/dummy/config/locales", "test/dummy/config/locales/en.yml", "test/dummy/config/routes.rb", "test/dummy/config/secrets.yml", "test/dummy/lib", "test/dummy/lib/assets", "test/dummy/log", "test/dummy/public", "test/dummy/public/404.html", "test/dummy/public/422.html", "test/dummy/public/500.html", "test/dummy/public/favicon.ico", "test/integration", "test/integration/navigation_test.rb", "test/spree_mailchimp_test.rb", "test/test_helper.rb"]
  s.homepage = "https://github.com/staffordlong/spree_mailchimp"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.8"
  s.summary = "Easily sync new and existing customers with a Mailchimp list"
  s.test_files = ["test/spree_mailchimp_test.rb", "test/test_helper.rb", "test/dummy", "test/dummy/README.rdoc", "test/dummy/lib", "test/dummy/lib/assets", "test/dummy/bin", "test/dummy/bin/rails", "test/dummy/bin/rake", "test/dummy/bin/bundle", "test/dummy/bin/setup", "test/dummy/app", "test/dummy/app/views", "test/dummy/app/views/layouts", "test/dummy/app/views/layouts/application.html.erb", "test/dummy/app/models", "test/dummy/app/models/concerns", "test/dummy/app/mailers", "test/dummy/app/helpers", "test/dummy/app/helpers/application_helper.rb", "test/dummy/app/controllers", "test/dummy/app/controllers/concerns", "test/dummy/app/controllers/application_controller.rb", "test/dummy/app/assets", "test/dummy/app/assets/stylesheets", "test/dummy/app/assets/stylesheets/application.css", "test/dummy/app/assets/images", "test/dummy/app/assets/javascripts", "test/dummy/app/assets/javascripts/application.js", "test/dummy/Rakefile", "test/dummy/config", "test/dummy/config/database.yml", "test/dummy/config/application.rb", "test/dummy/config/initializers", "test/dummy/config/initializers/filter_parameter_logging.rb", "test/dummy/config/initializers/inflections.rb", "test/dummy/config/initializers/assets.rb", "test/dummy/config/initializers/backtrace_silencers.rb", "test/dummy/config/initializers/wrap_parameters.rb", "test/dummy/config/initializers/cookies_serializer.rb", "test/dummy/config/initializers/session_store.rb", "test/dummy/config/initializers/mime_types.rb", "test/dummy/config/secrets.yml", "test/dummy/config/boot.rb", "test/dummy/config/environments", "test/dummy/config/environments/development.rb", "test/dummy/config/environments/production.rb", "test/dummy/config/environments/test.rb", "test/dummy/config/locales", "test/dummy/config/locales/en.yml", "test/dummy/config/routes.rb", "test/dummy/config/environment.rb", "test/dummy/log", "test/dummy/public", "test/dummy/public/404.html", "test/dummy/public/favicon.ico", "test/dummy/public/422.html", "test/dummy/public/500.html", "test/dummy/config.ru", "test/integration", "test/integration/navigation_test.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<spree_core>, ["~> 3.0.0"])
      s.add_runtime_dependency(%q<gibbon>, ["~> 2.2.4"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
    else
      s.add_dependency(%q<spree_core>, ["~> 3.0.0"])
      s.add_dependency(%q<gibbon>, ["~> 2.2.4"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
    end
  else
    s.add_dependency(%q<spree_core>, ["~> 3.0.0"])
    s.add_dependency(%q<gibbon>, ["~> 2.2.4"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
  end
end

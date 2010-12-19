RAILS_GEM_VERSION = '2.3.10' unless defined? RAILS_GEM_VERSION

require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|

  config.time_zone = 'UTC'
  config.action_mailer.default_charset = "utf-8"
  config.action_mailer.default_content_type = "text/html"
  config.action_controller.session = {
    :key => "key",
    :secret => "secretsecretsecretsecretsecretsecretsecretsecretsecretsecretsecretsecretsecretsecretsecret"
  }

  config.after_initialize do
    Haml::Template.options[:ugly] = true
    
    module Sass::Plugin
      def update_stylesheets_with_instrumentation(*args)
        ::Rails.logger.info "\n\n\n---Updating stylesheets---\n\n\n"
        update_stylesheets_without_instrumentation(*args)
      end
      alias_method_chain :update_stylesheets, :instrumentation
    end
  end
end

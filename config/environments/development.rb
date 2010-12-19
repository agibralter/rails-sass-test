config.cache_classes                                 = false
config.whiny_nils                                    = true
config.action_controller.consider_all_requests_local = true
config.action_controller.perform_caching             = false
config.action_view.debug_rjs                         = true
config.action_mailer.perform_deliveries              = true
config.action_mailer.raise_delivery_errors           = true
config.action_mailer.delivery_method                 = :sendmail

# Symlink javascripts and stylesheets on the fly.
config.after_initialize do
  if !File.exists?(File.join(Rails.root, 'public', 'app'))
    Rails.logger.info "Linking from public/ to app/javascripts and app/stylesheets for Jammit's helpers."
    `mkdir -p #{Rails.root}/public/app`
    `ln -s #{Rails.root}/app/javascripts #{Rails.root}/public/app/javascripts`
    `ln -s #{Rails.root}/app/stylesheets #{Rails.root}/public/app/stylesheets`
  end
end

Sass::Plugin.options[:always_check] = false
Sass::Plugin.options[:never_update] = true

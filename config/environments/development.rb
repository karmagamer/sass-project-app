Rails.application.configure do
   
  # devise says to define default url
  config.action_mailer.default_url_options = { :host => 'localhost:3000' }

  # set up for email sending even in dev mode
  # Don't care if the mailer can't send
  config.action_mailer.raise_delivery_errors = false

  config.action_mailer.delivery_method = :smtp
  
  ActionMailer::Base.smtp_settings = {
    :address => "smtp.gmail.com",
    :port => "587",
    :authentication => :plain,
<<<<<<< HEAD
    :user_name => "do-not-reply@example.com",
=======
    :user_name => "karma@testProject.com",
>>>>>>> ac88b1ce3a024e80a257d71624d22e1b8e57a03d
    :password => ENV["SMTP_ENTRY"],
    :enable_starttls_auto => true
  }

  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false
<<<<<<< HEAD
  
  config.action_mailer.delivery_method = :test 
  config.action_mailer.default_url_options = { :host => 'http://ruby-on-rails-123170.nitrousapp.com:3000'}

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false
=======

  config.action_mailer.delivery_method = :test
  config.action_mailer.default_url_options = { :host => 'karma-sass-app.herokuapp.com'}
  # Show full error reports.
  config.consider_all_requests_local = true

  # Enable/disable caching. By default caching is disabled.
  if Rails.root.join('tmp/caching-dev.txt').exist?
    config.action_controller.perform_caching = true

    config.cache_store = :memory_store
    config.public_file_server.headers = {
      'Cache-Control' => "public, max-age=#{2.days.seconds.to_i}"
    }
  else
    config.action_controller.perform_caching = false

    config.cache_store = :null_store
  end
>>>>>>> ac88b1ce3a024e80a257d71624d22e1b8e57a03d

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false

<<<<<<< HEAD
=======
  config.action_mailer.perform_caching = false

>>>>>>> ac88b1ce3a024e80a257d71624d22e1b8e57a03d
  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

<<<<<<< HEAD
  # Asset digests allow you to set far-future HTTP expiration dates on all assets,
  # yet still be able to expire them through the digest params.
  config.assets.digest = true

  # Adds additional error checking when serving assets at runtime.
  # Checks for improperly declared sprockets dependencies.
  # Raises helpful error messages.
  config.assets.raise_runtime_errors = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true
=======
  # Suppress logger output for asset requests.
  config.assets.quiet = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true

  # Use an evented file watcher to asynchronously detect changes in source code,
  # routes, locales, etc. This feature depends on the listen gem.
  config.file_watcher = ActiveSupport::EventedFileUpdateChecker
>>>>>>> ac88b1ce3a024e80a257d71624d22e1b8e57a03d
end

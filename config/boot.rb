<<<<<<< HEAD
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)
=======
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)
>>>>>>> ac88b1ce3a024e80a257d71624d22e1b8e57a03d

require 'bundler/setup' # Set up gems listed in the Gemfile.

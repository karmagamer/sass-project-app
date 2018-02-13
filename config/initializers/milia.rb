# OPTIONAL: Use this as a template for changing milia configuration
# put it in your config/initializers directory
# values shown below are the defaults in milia
Milia.setup do |config|

# true if you wish to use a coupon-based option in your sign-up form
# false to otherwise not expect a coupon attribute in the parameters
  config.use_coupon = false

<<<<<<< HEAD
# true if you use recaptcha on your sign-up form; 
=======
# true if you use recaptcha on your sign-up form;
>>>>>>> ac88b1ce3a024e80a257d71624d22e1b8e57a03d
  # be sure to include the gem 'recaptcha' in your Gemfile
# false if you do not
  config.use_recaptcha = false

# true if action after signing out is to return to the home (root) page
# false to return to the sign-in form (devise default)
  config.signout_to_root = true

# true if you are using airbrake to be notified of exceptions
  # be sure to include the gem 'airbrake' in your Gemfile
# false if you do not
# In certain situations, milia will notify airbrake of a situation which
<<<<<<< HEAD
  # is not necessarily an exception: such as if someone attempts to 
=======
  # is not necessarily an exception: such as if someone attempts to
>>>>>>> ac88b1ce3a024e80a257d71624d22e1b8e57a03d
  # sign up but you're limited new sign ups (such as when in beta mode)
  # then you'll get notified via airbrake of the email of the person
  # attempting the signup (in case you wish to contact them)
  config.use_airbrake = false

# use invite_member for devise work-around to invite members
# ASSUMES User model
  config.use_invite_member = true

<<<<<<< HEAD
  # whitelist user params list
  # allows an app to expand the permitted attribute list
  # specify each attribute as a symbol
  # example: [:name]
  # config.whitelist_user_params = []

=======
>>>>>>> ac88b1ce3a024e80a257d71624d22e1b8e57a03d
  # whitelist tenant params list
  # allows an app to expand the permitted attribute list
  # specify each attribute as a symbol
  # example: [:name]
<<<<<<< HEAD
  config.whitelist_tenant_params = [:plan, :token]
=======
  config.whitelist_tenant_params = [:plan]
>>>>>>> ac88b1ce3a024e80a257d71624d22e1b8e57a03d

  # whitelist coupon params list
  # allows an app to expand the permitted attribute list
  # specify each attribute as a symbol
  # example: [:coupon]
  # config.whitelist_coupon_params = []

end

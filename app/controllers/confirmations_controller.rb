class ConfirmationsController < Milia::ConfirmationsController
  def update
    if @confirmable.attempt_set_password(user_params)

      # this section is patterned off of devise 3.2.5 confirmations_controller#show

      self.resource = resource_class.confirm_by_token(params[:confirmation_token])
      yield resource if block_given?

      if resource.errors.empty?
        log_action( "invitee confirmed" )
        set_flash_message(:notice, :confirmed) if is_flashing_format?
          # sign in automatically
        sign_in_tenanted_and_redirect(resource)
<<<<<<< HEAD
        
=======

>>>>>>> ac88b1ce3a024e80a257d71624d22e1b8e57a03d
      else
        log_action( "invitee confirmation failed" )
        respond_with_navigational(resource.errors, :status => :unprocessable_entity){ render :new }
      end

    else
      log_action( "invitee password set failed" )
      prep_do_show()  # prep for the form
      respond_with_navigational(resource.errors, :status => :unprocessable_entity){ render :show }
    end  # if..then..else passwords are valid
  end
<<<<<<< HEAD
  
  def show
    if @confirmable.new_record?  ||
       !::Milia.use_invite_member || 
=======

  def show
    if @confirmable.new_record?  ||
       !::Milia.use_invite_member ||
>>>>>>> ac88b1ce3a024e80a257d71624d22e1b8e57a03d
       @confirmable.skip_confirm_change_password

      log_action( "devise pass-thru" )
      self.resource = resource_class.confirm_by_token(params[:confirmation_token])
      yield resource if block_given?
<<<<<<< HEAD
      
      if resource.errors.empty?
        set_flash_message(:notice, :confirmed) if is_flashing_format?
      end
      
=======

      if resource.errors.empty?
        set_flash_message(:notice, :confirmed) if is_flashing_format?
      end

>>>>>>> ac88b1ce3a024e80a257d71624d22e1b8e57a03d
      if @confirmable.skip_confirm_change_password
        sign_in_tenanted_and_redirect(resource)
      end
    else
      log_action( "password set form" )
      flash[:notice] = "Please choose a password and confirm it"
      prep_do_show()  # prep for the form
    end
    # else fall thru to show template which is form to set a password
    # upon SUBMIT, processing will continue from update
  end
<<<<<<< HEAD
  
=======

>>>>>>> ac88b1ce3a024e80a257d71624d22e1b8e57a03d
  def after_confirmation_path_for(resource_name, resource)
    if user_signed_in?
      root_path
    else
      new_user_session_path
    end
  end

  private
<<<<<<< HEAD
  
  def set_confirmable()
    @confirmable = User.find_or_initialize_with_error_by(:confirmation_token, params[:confirmation_token])
  end
end
=======

  def set_confirmable()
    @confirmable = User.find_or_initialize_with_error_by(:confirmation_token, params[:confirmation_token])
  end
end
>>>>>>> ac88b1ce3a024e80a257d71624d22e1b8e57a03d

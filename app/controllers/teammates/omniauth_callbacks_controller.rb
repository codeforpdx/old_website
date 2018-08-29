class Teammates::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    # You need to implement the method below in your model (e.g. app/models/user.rb)
    @teammate = Teammate.from_omniauth(request.env["omniauth.auth"])

    if @teammate.persisted?
      sign_in_and_redirect @teammate, :event => :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, :kind => "Facebook") if is_navigational_format?
    else
      session["devise.facebook_data"] = request.env["omniauth.auth"]
      redirect_to new_teammate_registration_url
    end
  end

  def failure
    redirect_to root_path
  end
end

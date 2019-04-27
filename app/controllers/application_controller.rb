class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
        # a bit unsure how this will play put, only having email in update and both keys in sign_up, lets see
        devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password])
        # devise_parameter_sanitizer.permit(:account_update, keys: [email])
    end
end

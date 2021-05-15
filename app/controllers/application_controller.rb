class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
   # before_action :authorized
    include SessionsHelper
   

    def authorized
        redirect_to root_path unless logged_in?
    end
    
    def success
        flash[:success] = " Welcome #{current_user.name}"
    end
end

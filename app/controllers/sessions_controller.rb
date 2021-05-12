class SessionsController < ApplicationController
    # helper_method :log_in
    # helper_method :logged_in?
    # helper_method :current_user
    
    def new

    end

    def create
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            log_in user
            redirect_to user
        else
            flash[:error] = "Invalid username or password"
            render "new"
        end
    end

    def destroy

    end

    
end
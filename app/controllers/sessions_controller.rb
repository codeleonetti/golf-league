class SessionsController < ApplicationController
    
    def new

    end

    def create
        user = User.find_by(username: user_params[:username])
       
        if user && user.authenticate(user_params[:password])
            log_in(user)
            redirect_to user_path
        else
            flash[:error] = "Invalid username or password"
            render "new"
        end
    end

    def destroy
        log_out
        redirect_to "new"
    end


    private

    def user_params
        params.permit(:username, :password)
    end
    
end
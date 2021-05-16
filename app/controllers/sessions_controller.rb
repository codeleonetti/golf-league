class SessionsController < ApplicationController
    #skip_before_action :authorized, only: [:new, :create, :index]

    # def login

    # end

    def create
     
        @user = User.find_by(username: params[:session][:username])
        if @user && @user.authenticate(params[:session][:password])
            log_in(@user)
            redirect_to @user
        else
            flash[:error] = "Invalid username or password"
            render :new
        end
    end

    def destroy
        session.clear
        redirect_to "/login"
    end

    # def google
    #     @user = User.find_or_create_by(username: auth["info"]["name"]) do |user|
    #         user.password = SecureRandom.hex
    #     end
    #     if @user && @user.id
    #         sessiion[:user_id] = @user.id
    #         redirect_to user_path
    #     else
    #         redirect_to "/"
    #     end
    # end

    # private

    # def auth
    #     request.env['omniauth.auth']
    # end
    
    
end
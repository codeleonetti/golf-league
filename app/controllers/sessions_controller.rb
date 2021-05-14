class SessionsController < ApplicationController
    #skip_before_action :authorized, only: [:new, :create, :index]

    def new

    end

    def login

    end

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


    
    
end
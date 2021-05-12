class UsersController < ApplicationController
    before_action :find_user, only: [:show, :edit, :update]
    before_action :logged_in_user, log_in, only: [:show,:edit, :update]

    def index
        @user = User.all
    end

    def show
        log_in
        logged_in_user
        find_user
    end

    def new
       @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            log_in @user
            flash[:success] = "Welcome #{@user.name}"
            redirect_to @user
        else
            render "new"
        end
    end

    def edit
        find_user
    end

    def update
        find_user
        if @user.update(user_params)
        else
            render "edit"
        end
    end

    def destroy

    end


    private

    def find_user
        @user = User.find_by_id(params[:id])
    end

    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
    
    def logged_in_user
        unless logged_in?
            flash[:danger] = "Please log in."
            redirect_to "/login"
        end
    end

end

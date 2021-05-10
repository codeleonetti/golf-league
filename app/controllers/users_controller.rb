class UsersController < ApplicationController

    before_action :logged_in_user, only: [:edit, :update]

    def index
        @user = User.all
    end

    def show
        find_user
    end

    def new
        @user = 
    end

    def create

    end

    def edit

    end

    def update

    end

    def destroy

    end


    private

    def find_user
        @user = User.find_by_id(params[:id])
    end

    def user_params
        params.require(:user).permit(:name, :email, :password)
    end
    
    def logged_in_user
        unless logged_in?
            flash[:danger] = "Please log in."
            redirect_to
    end

end

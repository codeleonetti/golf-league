class UsersController < ApplicationController
    before_action :find_user, only: [:show, :edit, :update]
    before_action :logged_in_user, only: [:show,:edit, :update, :destroy]
   # skip_before_action :authorized, only: [:new, :create]

    def index
        @user = User.all
    end

    def show
        
        current_user  
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
         if logged_in?
            #find_user
            if current_user.id == @user.id
                render "edit"
            else
                flash[:error] = "You are not authorized to edit this page"
                redirect_to "/"
            end
        end
    end

    def update
        if @user.update(user_params)
            @user.save
            redirect_to @user    
        else
            flash[:error] = " Update failed"
            render "edit"
        end
    end

    # def delete
    #     find_user
    #     find_user.destroy
       
    #     redirect_to '/'
    # end


    private

    def find_user
        @user = User.find_by_id(params[:id])
    end

    def user_params
        params.require(:user).permit(:name, :address, :email, :username, :password, :password_confirmation)
    end
    
    def logged_in_user
        unless logged_in?
            flash[:danger] = "Please log in."
            redirect_to "/login"
        end
    end

end

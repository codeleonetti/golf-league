module SessionsHelper

    def log_in(user)
       
        session[:user_id]=@user.id
    end

    def current_user
        if session[:user_id]
            @currentuser ||= User.find_by_id(session[:user_id])
        end
    end

    def logged_in?
        !current_user.nil?
        
    end

    
   


end


module SessionsHelper

    def log_in(user)
        session[:user_id] = user.id
        redirect_to "user"
    end

    def forget(user)
        user.forget
        cookies.delete(:user_id)

    end

    def log_out
        forget(current-user)
        session.delete(:user_id)
        @current_user = nil
    end



end


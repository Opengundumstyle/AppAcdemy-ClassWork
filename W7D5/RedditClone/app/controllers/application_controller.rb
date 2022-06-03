class ApplicationController < ActionController::Base
   
    helper_method :current_user

    def current_user
        @current_user ||= User.find_by(session_token: session[:session_token]) # .where()
    end

    def log_in!(user)
         @current_user = user
         session[:session_token] = user.session_token
    end
    
    def log_out!
      current_user.reset_session_token!
      session[:session_token] = nil
    end

   
    def log_in?
        !!current_user
    end

    def require_signed_in!
      redirect_to to new_session_url unless log_in?
    end
end

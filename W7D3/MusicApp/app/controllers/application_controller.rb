class ApplicationController < ActionController::Base
     # CRLLL
     helper_method :current_user, :logged_in?
     
      def login!(user)
          @current_user = user
          session[:session_token] = user.session_token
       end
   
       def current_user
            return nil if session[:session_token].nil?
            @current_user ||= User.find_by(session_token: session[:session_token])
       end
        
       def logged_in?
            !!current_user
       end


       def logout!
            current_user.try(:reset_session_token!)
            session[:session_token] = nil
            
       end




  
end

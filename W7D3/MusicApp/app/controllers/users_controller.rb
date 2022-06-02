class UsersController < ApplicationController

     def show
        if current_user.nil?
            redirect_to new_session_url
            return 
        end
          @user = current_user
          render :show
     end

     def create
          @user = User.new(user_params)
         
         if @user.save
            login!(@user)
            redirect_to user_url(@user)
          else
            render :new
          end
     end
   
    def new
         @user = User.new
         render :new
    end
    
     private 

     def user_params
         params.require(:user).permit(:email,:password)
           
     end
   
end


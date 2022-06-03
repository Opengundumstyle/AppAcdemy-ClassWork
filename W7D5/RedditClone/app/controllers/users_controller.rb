class UsersController < ApplicationController

     def new
         @user = User.new
         render :new
     end

     def create
        @user  = User.create(user_params)
           if @user.save
                log_in!(@user)
                redirect_to user_url(@user)
           else
               flash[:errors] = ['Invalid password,username or email']
               render :new
           end
     end

     def show
          
           @user = User.find(params[:id])  #current_user
           render :show
     end

     private
        def user_params
             params.require(:user).permit(:username,:email,:password)
        end
   
end

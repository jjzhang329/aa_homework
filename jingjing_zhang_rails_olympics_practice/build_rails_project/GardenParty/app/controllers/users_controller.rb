class UsersController < ApplicationController
    def new 
       render :new
    end 

    def create
        new_user = User.new(user_params)
        if new_user.save
            redirect_to gardens_url 
        else 
            render :new 
        end 

    end 

    def user_params
        params.require(:user).permit(:username)
    end 
    

end

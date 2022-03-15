class RegistrationsController < ApplicationController
    def new
        @user = User.new
    end

    def create
        #render plain: params
        #render plain: params[:user]
        #render plain: "You data is MINE!!!"
        @user = User.new(user_params)
        if @user.save
            redirect_to root_path, notice: "Account created"
        else 
            render :new, status: :unprocessable_entity
        end
    end

    # private

    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation)
    end
end
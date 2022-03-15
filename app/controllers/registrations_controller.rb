class RegistrationsController < ApplicationController
    def new
        @user = User.new
    end

    def create
        #render plain: params
        #render plain: params[:user]
        #render plain: "You data is MINE!!!"
        @user = User.new(params[:user_params])
        if @user.save
            cookies[:user_id] = @user.id
            redirect_to root_path, notice: "Sucessfully created an account"
        else
            render :new, status: :unprocessable_entity
        end
    end

    private

    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation)
    end
end
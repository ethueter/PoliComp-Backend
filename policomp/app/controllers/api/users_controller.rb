class Api::UsersController < ApplicationController


    def index
        @users = User.all
        render json: @users, status: :successful
    end

    def create
        @user = User.new(user_params)
        if @user.save
            render json: @user, status: :successful
        else
            render json: { errors: @user.errors.full_messages }
        end
    end

    private

    def user_params
        params.permit(:username, :email, :password)
    end

end




class Api::SessionsController < ApplicationController

    def create 
        @user = User.find_by(email: params[:email])
        if @user && @user.authenticate(params[:password])
            token = JWT.encode({ user_id: @user.id }, ENV['SECRETS'], 'HS256')
            render json: { token: token}, status: :ok
        else
            render json: {errors: ['Incorrect email or password']},
                    status: :unathorized
        end
    end 
end 
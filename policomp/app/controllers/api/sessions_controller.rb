class Api::SessionsController < ApplicationController

    def create 

        @user = User.find_by(email: params[:email]) 
        
        if @user && @user.authenticate(params[:password])
            token = JWT.encode({ user_id: @user.id }, ENV['AUTH_JWT'], 'HS256')
            render json: { token: token, current_user_id: @user.id}, status: :ok
        else
            render json: {errors: ['Incorrect email and password']},
                    status: :unathorized
        end
    end 
end 
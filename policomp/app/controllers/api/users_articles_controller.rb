class Api::UsersArticlesController < ApplicationController

    def index
        @users_articles = UserArticle.all
        render json: @users_articles, status: :successful
    end

    def create
        @user_article = UserArticle.new(user_article_params)
        if @user_article.save
            render json: @user_article, status: :successful
        else
            render json: { errors: @user_article.errors.full_messages }
    end

    private

    def user_article_params
        params.permit(:username, :email, :password_digest)
    end

end

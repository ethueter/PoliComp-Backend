class Api::UsersArticlesController < ApplicationController

    def index
        @users_articles = UsersArticle.all
        render json: @users_articles, status: :successful
    end

    def create
        @users_article = UsersArticle.new(users_article_params)
        if @users_article.save
            render json: @users_article, status: :successful
        else
            render json: { errors: @users_article.errors.full_messages }
    end

    private

    def users_article_params
        params.permit(:username, :email, :password_digest)
    end

end

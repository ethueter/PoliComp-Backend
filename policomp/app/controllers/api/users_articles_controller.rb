class Api::UsersArticlesController < ApplicationController
        before_action :authorize!, only: [:create]


    def index
        @users_articles = UsersArticle.all
        render json: @users_articles, status: :successful
    end

    def create
        @users_article = UsersArticle.new(users_article_params)
        @users_article.id = current_user.id
        render json: @users_article
        # if @users_article.save
        #     render json: @users_article, status: :successful
        # else
        #     render json: { errors: @users_article.errors.full_messages }
        # end
    end

    private


    def users_article_params
        params.permit(:user_id, :article_id, :favorite, :rating)
    end

end

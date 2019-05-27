class Api::ArticlesController < ApplicationController
    before_action :authorize!, only: [:create]

    def index
        @articles = Article.all 
        render json: @articles, status: :success
    
    end 

    def create 
        @article = Article.new(article_params)
        if @article.save
            render json: @article, status: success 
        else 
            render json: ( @article.errors.full_messages)
        end

    end

    private

    def article_params 
        params.permit(:title, :author, :content, :source_id)
    
    end



end

class Api::SourcesController < ApplicationController

    def index
        @sources = Source.all 
        render json: @sources, status: :successful
    end

    def create 
        @source = Source.new(source_params)
        if @source.save
            render json: @source, status: :successful
        else
            render json: { errors: @source.errors.full_messages }
        end
    end 

    private

    def source_params
        params.permit(:name, :api_source_id, :source_url)
    end

end

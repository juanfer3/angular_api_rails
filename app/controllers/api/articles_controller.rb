class Api::ArticlesController < ApplicationController
    before_action :set_article, only: [:show, :update, :destroy]
    def index
        @articles = Article.all
        render json: @articles, status: :ok
    end

    def create
        
        
        
        @article = Article.new(article_params)

        if @article.save
            puts"==========Articulo Guardado========= "
            render json: @article, status: :created
        else
            render json: @article.erros, status: :unprocessable_entity
        end

    end

    def show
        render json: @article
    end

    def update
        if @article.update(post_params)
          render json: @article
        else
          render json: @article.erros, status: :unprocessable_entity
        end
    end

    def destroy
        @article.destroy
    end


    private
        def set_article
            @article = Article.find(params[:id])
        end

        def article_params
            params.require(:article).permit!
        end
end

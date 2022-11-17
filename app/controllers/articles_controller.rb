class ArticlesController < ApplicationController
    def show
        @article = Article.find(params[:id])
        #debugger
    end

    def index
        @articles =  Article.all
    end 

    def new

    end

    def create
        #render plain: params[:article] to render plain text
        render :json => params[:article]
        #debugger
    end
end
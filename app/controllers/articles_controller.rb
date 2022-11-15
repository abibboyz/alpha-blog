class ArticlesController < ApplicationController
    def show
        @article = Article.find(params[:id])
        #debugger
    end

    def index
        @articles =  Article.all
    end
end
class ArticlesController < ApplicationController
    def show
        @article = Article.find(params[:id])
        #debugger
    end

    def index
        @articles =  Article.all
    end 

    def new
        @article = Article.new
    end

    def create
        @article = Article.new(params.require(:article).permit(:title, :description))
        if @article.save
            flash[:notice] = "Article was created successfully."
            #redirect_to article_path(@article.id) #one way
            redirect_to @article #other way
        else
            render :new, status: :unprocessable_entity
        end   
        
    end
end
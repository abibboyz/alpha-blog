class ArticlesController < ApplicationController
    before_action :setArticle, only: [:show, :edit, :update, :destroy]
    def show
        #debugger
    end

    def index
        @articles =  Article.all
    end 

    def new
        @article = Article.new
    end

    def edit
        
    end

    def create
        @article = Article.new(article_params)
        if @article.save
            flash[:notice] = "Article was created successfully."
            #redirect_to article_path(@article.id) #one way
            redirect_to @article #other way
        else
            render :new, status: :unprocessable_entity
        end   
    end

    def update 
        if @article.update(article_params)
            flash[:notice]="Article was updated successfully"
            redirect_to @article
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        @article.destroy
        redirect_to articles_path
    end

    private

    def setArticle
        @article = Article.find(params[:id])
    end

    def article_params
        params.require(:article).permit(:title, :description)
    end

end
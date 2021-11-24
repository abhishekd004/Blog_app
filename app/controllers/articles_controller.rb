class ArticlesController < ApplicationController
    def show
        #byebug #to pause the server
        @article = Article.find(params[:id]) #params = parameter
    end

    def index
        @articles = Article.all
    end
    
    def new
    end

    def create
        @article = Article.new(params.require(:articles).permit(:title, :description))
        @article.save
        redirect_to @article
    end

end
class ArticlesController < ApplicationController
    def show
        #byebug #to pause the server
        @article = Article.find(params[:id]) #params = parameter
    end

    def index
        @articles = Article.all
    end
    
end
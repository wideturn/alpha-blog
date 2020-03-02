class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def create
    #Display what is being passed on Submit
  #  render plain: params[:article].inspect
    @article = Article.new(article_params)
    @article.save
  end

  private
    def article_params
      params.require(:article).permit(:title, :description)
    end

end

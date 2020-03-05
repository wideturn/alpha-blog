class ArticlesController < ApplicationController
  before_action :set_article, only: [:edit, :update, :show, :destroy]
  def new
    @article = Article.new
  end

  def create
    #Display what is being passed on Submit
  #  render plain: params[:article].inspect
     @article = Article.new(article_params)
    if @article.save
      redirect_to article_path(@article)
      flash[:notice] = "Article was successfully created"
    else
      render 'new'
    end

  end

  def show
    #article set in before_action at beginning of class definition
  end

  def edit
    #article set in before_action at beginning of class definition
  end

  def update
    #article set in before_action at beginning of class definition
    if @article.update(article_params)
      redirect_to article_path(@article)
      flash[:notice] = "Article was successfully updated"
    else
      render 'edit'
    end
  end

  def destroy
    #article set in before_action at beginning of class definition
    @article.destroy
    flash[:notice] = "Article was successfully deleted"
    redirect_to articles_path
  end

  def index
    @articles = Article.all
  end

  private
    def set_article
      @article = Article.find(params[:id])
    end

    def article_params
      params.require(:article).permit(:title, :description)
    end

end

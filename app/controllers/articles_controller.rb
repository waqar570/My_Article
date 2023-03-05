class ArticlesController < ApplicationController
  attr_accessor :image

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    # @article.image = params[:article][:image]
    if @article.save
        MyEmailJob.perform_later
        # moved to model calback after_create
        redirect_to(@article, :notice => 'Article is created')
    else
        render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      flash[:notice] = "You have successfully updated the article."

      redirect_to @article 
    else
      render :edit
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path
  end

  private
    def article_params
      params.require(:article).permit(:title, :description, :author_email, :image)
    end
end



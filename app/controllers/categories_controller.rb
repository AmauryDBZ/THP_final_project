class CategoriesController < ApplicationController
  before_action :set_category

  def index
    @categories = Category.all
  end

  def show
    @projects =  @category.projects
  end

  private 

  def set_category
    @category = Category.friendly.find_by_slug(params[:slug])
  end
end

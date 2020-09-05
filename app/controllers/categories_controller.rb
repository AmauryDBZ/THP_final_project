class CategoriesController < ApplicationController
  before_action :set_category

  def index
    @categories = Category.all
  end

  def show 
  end

  private 

  def set_category
    @category = Category.friendly.find_by_slug(params[:slug])
  end
end

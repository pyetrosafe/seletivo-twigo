class CatalogController < ApplicationController

  def index
    @courses = Course.not_finished.all
  end

  def show
    @course = Course.not_finished.find(params[:id])
  end
end

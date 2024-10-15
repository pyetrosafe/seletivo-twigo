class CoursesController < ApplicationController

  def index
    @courses = Course.all
  end

  def show
    @course = course_find
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)

    if @course.save
      redirect_to @course
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @course = course_find
  end

  def update
    @course = course_find

    if @course.update(course_params)
      redirect_to @course
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @course = course_find
    @course.destroy

    redirect_to root_path, status: :see_other
  end

  private

  def course_params
    params.require(:course).permit(:title, :description, :category, :author, :price, :language)
  end

  def course_find
    Course.find(params[:id])
  end
end

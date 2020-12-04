class CoursesController < ApplicationController


  def index     
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      flash[:notice] = "couse create"
      redirect_to root_path
    else
      flash[:alert] = "something went wrong"
      render 'new'
    end
  end


private
  def course_params
    params.require(:course).permit(:name,:description,:attachment)
  end

  
end

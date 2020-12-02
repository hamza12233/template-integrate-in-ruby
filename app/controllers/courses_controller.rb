class CoursesController < ApplicationController


  def index
    debugger
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def course_params
    params.require(:course).permit(:name,:description)
  end
end

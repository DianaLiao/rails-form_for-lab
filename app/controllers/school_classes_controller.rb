class SchoolClassesController < ApplicationController

  def index
  end

  def show
    set_school_class

  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.create(title:school_class_params[:title], room_number:school_class_params[:room_number])
    redirect_to school_class_path(@school_class)
  end

  def edit
    set_school_class
  end

  def update
    set_school_class
    @school_class.update(title:school_class_params[:title], room_number:school_class_params[:room_number])
  
    redirect_to school_class_path
  end

  private

  def set_school_class
    @school_class = SchoolClass.find(params[:id])
  end

  def school_class_params
    params.require(:school_class)
  end

end

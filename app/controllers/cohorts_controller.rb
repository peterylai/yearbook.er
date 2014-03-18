class CohortsController < ApplicationController
  def index
  end

  def new
    @campuses = Campus.all
    @cohort = Cohort.new
  end

  def create
    @cohort = Cohort.create(cohort_params)
    redirect_to cohort_path(@cohort)
  end

  def show
    @cohort = Cohort.find_by(id: params[:id])
  end

  private 
  
  def cohort_params
    params.require(:cohort).permit(:nickname, :month, :year, :campus_id, :cohort_photo)
  end
end
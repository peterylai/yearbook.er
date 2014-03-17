# cohorts_controller.rb
class CohortsController < ApplicationController
  def new
    @cohort = Cohort.new
  end

  def create
    @cohort = Cohort.create(cohort_params)
    redirect_to cohort_path(@cohort)
  end

  def show
    @cohort = Cohort.find_by(id: params[:id])
  end

  def cohort_params
    params.require(:cohort).permit(:nickname, :month, :year, :location, :cohort_photo)
  end
end
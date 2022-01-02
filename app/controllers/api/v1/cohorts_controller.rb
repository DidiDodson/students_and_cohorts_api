class Api::V1::CohortsController < ApplicationController
  def show
    cohort = Cohort.find(params[:id])
    render json: CohortSerializer.find_cohort(cohort)
  end
end

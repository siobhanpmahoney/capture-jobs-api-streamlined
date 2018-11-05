class Api::V1::JobsController < ApplicationController

  def index
    @jobs = Job.all
    render json: @jobs
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      render json: @job
    end
  end

  def show
    @job = Job.find(params[:id])
    render json: @job
  end

  def update
    @job = Job.find(params[:id])
    render json: @job
  end

  private

  def job_params
    params.require(:job).permit(:title, :date_published, :contents, :museId, :location, :level, :category, :date_saved, :overall_active_status, :date_applied, :application_response_status, :interview_invite, :offer_status, :user_id, :company_id,
    company_ids: [],
    companies_attributes: [
      :name, :size, :location, :description, :museId, :twitter, :image_link, :image_link2, :image_mini, :company_logo, :industry
    ]
  )
  end
end

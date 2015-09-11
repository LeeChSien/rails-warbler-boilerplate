class MainController < ApplicationController
  def index
    # index
  end

  def create_job
    job = Job.new
    job.save

    job.delay.work!

    render json: { success: true, jobs: Job.order('created_at') }
  end

  def delete_all_jobs
    Job.delete_all
    render json: { success: true, jobs: Job.order('created_at') }
  end

  def list_jobs
    render json: { jobs: Job.order('created_at') }
  end
end

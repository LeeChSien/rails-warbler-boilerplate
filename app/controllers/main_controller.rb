class MainController < ApplicationController
  def index
    # index
  end

  def create_job
    Job.delay.produce
    render json: { success: true, jobs: Job.all }
  end

  def delete_all_jobs
    Job.delete_all
    render json: { success: true, jobs: Job.all }
  end

  def list_jobs
    render json: { jobs: Job.all }
  end
end

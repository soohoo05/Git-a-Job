class JobsController < ApplicationController



  def create
    @job= Job.create(job_params)
    if @job.valid?
    render json: @job
  else
    render json: {"error": @job.errors.full_messages}, status: 422
  end
  end

  def destroy
    @job= Job.find(params[:id])
    @job.destroy
  end

  def show
    @job =Job.find(params[:id])
    render json:@job
  end

  def update
    @job= Job.find(params[:id])
    @job.update(user_params)
    if @job.valid?
      render json:@job
    else
      render json: {"error": @job.errors.full_messages}, status: 422
  end
  end

  def search
    if params[:location] == "empty"
      @location = ""
    else
      @location = params[:location]
    end

    if params[:description] == "empty"
      @description = ""
    else
      @description = params[:description]
    end

    @jobType = params[:full_time]
    @job_results = GithubAdapter.get_jobs(@location, @description, @full_time)

    render json: @job_results

  end


  private

  def job_params
    params.require(:job).permit(:apiID,:title,:location,:jobType,:description,:how_to_apply,:company,:company_url,:company_logo)
  end


end

class JobsController < ApplicationController

  def create
    @job= Job.create(user_params)
    if @job.valid?
    render json:@job
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


  private

  def user_params
    params.require(:job).permit(:apiID,:title,:location,:jobType,:description,:how_to_apply,:company,:company_url,:company_logo)
  end


end

class UserjoblistsController < ApplicationController

  def create
    @userJobList = userJobList.create(list_params)
    if @userJobList.valid?
      render json: @userJobList
    else
      render json: { @userJobList.errors.full_messages }, status: 422
  end

  def destroy
    @userJobList.find(params[:id])
    @userJobList.destroy
  end

  private
    def list_params
      params.require(:userJobList).permit(:user_id, :job_id)
    end
end

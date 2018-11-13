class UserjoblistsController < ApplicationController

  def create
    @userjoblist = Userjoblist.create(list_params)
    if @userjoblist.valid?
      render json: @userjoblist
    else
      # render json: { @userjoblist.errors.full_messages , status: 422}
    end
  end

  def destroy
    @userjoblist.find(params[:id])
    @userjoblist.destroy
  end

  def check
    @exists = "false"
    @jobApiId = params[:job_apiId]
    @userId = params[:user_id]
    @user = User.find(@userId)
    @user.jobs.each do |job|
      if job.apiID == @jobApiId
        @exists = "true"
      end
    end
    render json: @exists
  end

  private
    def list_params
      params.require(:userjoblist).permit(:user_id, :job_id)
    end
end

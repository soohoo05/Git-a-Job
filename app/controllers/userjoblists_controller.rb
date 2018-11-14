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
    @userjoblist = Userjoblist.find_by(user_id: params[:user_id], job_id: params[:job_id]);
    @userjoblist.destroy
  end

  def check
    @exists = "false"
    @jobApiId = params[:job_apiId]
    @userId = params[:user_id]
    @user = User.find(@userId)
    @user.jobs.each do |job|
      # byebug
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

# dc428b94-e42e-11e8-91e2-23879ca9e8b0
# 4e262cf8-d164-11e8-8d6f-ab0d9ad33e10

class RepliesController < ApplicationController

  http_basic_authenticate_with name: "admin",
                               password: "admin",
                               only: :destroy

  def create
    @email = Email.find(params[:email_id])
    @reply = @email.replies.create(reply_params)
    redirect_to email_path(@email)
  end

  def show

  end

  def destroy
    @email = Email.find(params[:email_id])
    @reply = @email.replies.find(params[:id])
    @reply.destroy
    redirect_to email_path(@email)
  end


  private

  def reply_params
    params.require(:reply).permit(
        :commenter,
        :body
    )
  end
end
class EmailsController < ApplicationController
  def index
    @emails = Email.all
  end

  def show
    @email = Email.find(params[:id])
  end


  def new

  end

  def create
    #render plain: params[:email][:title].inspect
    @email = Email.new(email_params)
    @email.save
    redirect_to @email
  end

  private

  def email_params
    params.require(:email).permit(
        :title,
        :text
    )
  end
end

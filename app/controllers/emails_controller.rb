class EmailsController < ApplicationController
  def index
    @emails = Email.all
  end

  def show
    @email = Email.find(params[:id])
  end


  def new
    @email = Email.new
  end

  def create
    @email = Email.new(email_params)
    if @email.save
      redirect_to @email
    else
      puts "yo you broke this shit"
      render 'new'
    end
  end

  def edit
    @email = Email.find(params[:id])
  end

  def update
    @email = Email.find(params[:id])
    if @email.update(email_params)
      redirect_to @email
    else
      puts "NO YOU CANT DO THAT"
      render 'edit'
    end
  end

  def delete

  end

  private

  def email_params
    params.require(:email).permit(
        :title,
        :text
    )
  end
end

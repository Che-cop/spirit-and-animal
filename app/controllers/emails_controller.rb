class EmailsController < ApplicationController

  def index
    @email = Email.last
  end

  def create
    Email.create(email_params)
    redirect_to emails_path
  end

  private

  def email_params
    params.require(:email).permit(:email)

  end
end

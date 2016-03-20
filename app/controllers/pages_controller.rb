class PagesController < ApplicationController

  def index
    @last = Email.last
    @email = Email.new
  end


end

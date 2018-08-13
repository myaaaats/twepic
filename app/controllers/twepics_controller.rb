class TwepicsController < ApplicationController
  def index
  end

  def new
    @twepic = Twepic.new
  end

  def create
    Twepic.create(title: params[:twepic][:title], content: params[:twepic][:content])
    redirect_to new_twepic_path
  end
end

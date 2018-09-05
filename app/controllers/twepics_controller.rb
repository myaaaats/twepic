class TwepicsController < ApplicationController
  before_action :set_twepic, only: [:show, :edit, :update, :destroy]
  before_action :login, only: [:new, :edit, :show, :destroy]

  def index
    @twepics = Twepic.all
  end

  def new
    if params[:back]
      @twepic = Twepic.new(twepic_params)
    else
      @twepic = Twepic.new
    end
  end

  def create
    @twepic = Twepic.create(twepic_params)
    @twepic.user_id = current_user.id
    if @twepic.save
      redirect_to twepics_path, notice: "投稿しました！"
    else
      render 'new'
    end
  end

  def show
    @favorite = current_user.favorites.find_by(twepic_id: @twepic.id)
  end

  def edit
  end

  def update
    if @twepic.update(twepic_params)
      redirect_to twepics_path, notice: "編集しました！"
    else
      render 'edit'
    end
  end

  def destroy
    @twepic.destroy
    redirect_to twepics_path, notice:"削除しました！"
  end

  def confirm
    @twepic = Twepic.new(twepic_params)
    render :new if @twepic.invalid?
  end

  private
  def twepic_params
    params.require(:twepic).permit(:title, :content)
  end

  def set_twepic
    @twepic = Twepic.find(params[:id])
  end

  def login
    redirect_to new_user_path unless logged_in?
  end
end

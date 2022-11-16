class GiftlistsController < ApplicationController
  before_action :set_giftlist, only: [:show, :edit, :update, :destroy]

  def top
    @giftlists = Giftlist.where(rating: 2)
    # raise
  end
  def index
    @giftlists = Giftlist.all
  end

  def show
    # raise
    # @giftlist = Giftlist.find(params[:id])
  end

  def new
    @giftlist = Giftlist.new
  end

  def create
    # raise
    @giftlist = Giftlist.new(giftlist_params)
    @giftlist.save
    redirect_to giftlist_path(@giftlist)
  end

  def edit
    # raise
    # @giftlist = Giftlist.find(params[:id])
  end

  def update
    # raise
    # @giftlist = Giftlist.find(params[:id])
    @giftlist.update(giftlist_params)
    redirect_to giftlist_path(@giftlist)
  end

  def destroy
    # @giftlist = Giftlist.find(params[:id])
    @giftlist.destroy
    redirect_to giftlists_path status: :see_other
  end

  private
# private method

  def giftlist_params
    params.require(:giftlist).permit(:name, :ranking, :rating)
  end

  def set_giftlist
    @giftlist = Giftlist.find(params[:id])
  end

end

class ReviewsController < ApplicationController
  before_action :set_giftlist, only: %i[new create]

  def new
    # raise
    @giftlist = Giftlist.find(params[:giftlist_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.giftlist = @giftlist
    if @review.save
      redirect_to giftlist_path(@giftlist)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    # DELETE
    @review = Review.find(params[:id])
    @review.destroy
    # GET
    redirect_to giftlist_path(@review.giftlist), status: :see_other
  end

  private

  def set_giftlist
    @giftlist = Giftlist.find(params[:giftlist_id])
  end

  def review_params
    params.require(:review).permit(:content)
  end

end

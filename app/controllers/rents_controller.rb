class RentsController < ApplicationController
  def create
    @rent = Rent.new(params[:rent])
  @rent.save

  redirect_to profile_path(@profile)

  def update
    @rent = Rent.find(params[:id])
    @rent.update(params[:rent]) 
  end

  def destroy
    @rent = Rent.find(params[:id])
    @rent.destroy
    redirect_to profile_path, status: :see_other
  end

  private

  def rent_params
    params.require(:rent).permit(:date_start, :date_end, :user_name, :total_price)
  end
end

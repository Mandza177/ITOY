class RentsController < ApplicationController
  def create
    @rent = Rent.new(params[:rent])
    @rent.save
    redirect_to profile_path(@profile)
  end

  def update
    @rent = Rent.find(params[:id])
    @rent.update(params[:rent]) # Will raise ActiveModel::ForbiddenAttributesError
  end

  def destroy
    @rent = Rent.find(params[:id])
    @rent.destroy
    redirect_to profile_path, status: :see_other
  end

  private

  def rent_params
    params.require(:rent).permit(:start_time, :end_time, :total_price)
  end
end

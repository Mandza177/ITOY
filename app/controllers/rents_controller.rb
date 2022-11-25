class RentsController < ApplicationController
  def create
    @rent = Rent.new(rent_params)
    @rent.acceptation = "pending"
    @rent.user = current_user
    @rent.total_price = 0
    @toy = Toy.find(params[:toy_id])
    @rent.toy = @toy
    if @rent.save
      redirect_to owner_rents_path
    else
      render "toys/show", status: :unprocessable_entity
    end
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
    params.require(:rent).permit(:start_date, :end_date, :total_price)
  end
end

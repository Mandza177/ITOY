class Owner::RentsController < ApplicationController
  def index
    @rents = current_user.rents
    @my_rents = Rent.includes(:toy).where(toy: { user_id: current_user.id })
  end

  def update
    set_rent
    @rent.update(set_params)
    redirect_to profile_path
  end

  def accept

    rent = Rent.find(params[:id])
    rent.acceptation = "Accepted"
    rent.save
    redirect_to owner_rents_path
  end

  def reject
    rent = Rent.find(params[:id])
    rent.acceptation = "Declined"
    rent.save
    redirect_to owner_rents_path
  end

  private

  def set_rent
    @rent = Rent.find(params[:id])
  end

  def set_params
    params.require(:rent).permit(:status)
  end

end

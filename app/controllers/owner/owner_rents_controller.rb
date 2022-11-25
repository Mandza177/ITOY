class Owner::RentsController < ApplicationController
  def index
    @toys = current_user.toys
  end

  def update
    set_rent
    @rent.update(set_params)
    redirect_to profile_path
  end

  private

  def set_rent
    @rent = Rent.find(params[:id])
  end

  def set_params
    params.require(:rent).permit(:status)
  end

end
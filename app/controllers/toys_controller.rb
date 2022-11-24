class ToysController < ApplicationController
  def index
    if params[:query].present?
      @toys = Toy.where("title ILIKE ?", "%#{params[:query]}%")
    else
      @toys = Toy.all
    end
  end

  def show
    @toy = Toy.find(params[:id])
  end
end

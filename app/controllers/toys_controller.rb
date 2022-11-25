class ToysController < ApplicationController
  def home
    # @toys = Toy.all
    # @toy = Toy.find(params[:id])
  end

  def index
    if params[:query].present? && params[:cities].present?
      @toys = Toy.where(city: params[:cities]).where("title ILIKE ?", "%#{params[:query]}%")
    else
      if params[:query].present? && params[:cities] == ""
        @toys = Toy.where("title ILIKE ?", "%#{params[:query]}%")
      else
        if params[:cities].present?
          @toys = Toy.where(city: params[:cities])
        else
          @toys = Toy.all
        end
      end
    end
  end

  def show
    @toy = Toy.find(params[:id])
    @rent = Rent.new
  end
end

class PagesController < ApplicationController
  def home
    @toys = Toy.first(3)
  end

  # def index
  #   @toys = Toy.all
  # end

  # def show
  #   @toy = Toy.find(params[:id])
  # end

end

class ToysController < ApplicationController
  def home
    # @toys = Toy.all
    # @toy = Toy.find(params[:id])
  end

  def index
    @toys = Toy.all
  end

  def show
    @toy = Toy.find(params[:id])
  end


end

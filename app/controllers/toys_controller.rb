class ToysController < ApplicationController
  def index
    @toys = Toy.all
  end

  def show
    @toys = Toy.find(params[:id])
  end
end

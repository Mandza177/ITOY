class Owner::ToysController < ApplicationController
  def index
    @toys = current_user.toys
  end
end

class HomesController < ApplicationController
  def index
    @tutorials = Tutorial.all
    redirect_to tutorials_path(@tutorials)
  end
end

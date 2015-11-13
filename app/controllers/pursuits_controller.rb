class PursuitsController < ApplicationController

  def show
    @pursuit = Pursuit.find_by(slug)
  end
end

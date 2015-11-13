class ActivityController < ApplicationController
  before_save :set_slug

  def show
    @activity = find_activity_by_name(params[:activity_name])
  end

  def index
    @activities = Activity.all
  end

  def set_slug
    self.slug = name.parameterize
  end
end

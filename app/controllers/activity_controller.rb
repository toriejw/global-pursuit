class ActivityController < ApplicationController

  extend FriendlyId
  friendly_id :name, use: :slugged

  def show
    @activity = find_activity_by_name(params[:activity_name])
  end

  def create
    #the other option, aside from call back
    #let the user create the name that comes
    #in from the params
    
    #slug = name. paramaterize
  end

  private

  def activity_params
    params.require(:activity).permit(:name)
  end
end

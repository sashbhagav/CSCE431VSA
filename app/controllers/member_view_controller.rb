# frozen_string_literal: true

class MemberViewController < ApplicationController
  layout false
  def index
    @households = Household.all
    @events = Event.order('name ASC')
  end

  # def show
  #   @event = Event.find(params[:id])
  # end

  def login
    redirect_to(controller: 'login', action: 'index')
  end

  private

  # def event_params
  #   params.require(:event).permit(:name, :description, :location, :time, :points)
  # end
end

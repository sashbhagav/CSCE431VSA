class MemberViewController < ApplicationController
  layout false
  def index
      @events = Event.order('name ASC')
  end

  def show
      @event = Event.find(params[:id])
  end

  # def new
  #     @event = Event.new
  # end
  # def create
  #     @event = Event.new(event_params)
  #     @event.save
  #     flash[:added] = "you have added an event"
  #     redirect_to(events_path)
  # end

  # def edit
  #     @event = Event.find(params[:id])
  # end
  # def update
  #     @event = Event.find(params[:id])
  #    if @event.update(event_params)
  #      redirect_to(event_path(@event))
  #    else
  #      render('edit')
  #    end
  # end

  # def delete
  #     @event = Event.find(params[:id])
  # end
  # def destroy
  #    @event = Event.find(params[:id])
  #    @event.destroy
  #    redirect_to(events_path)
  # end

  def login
    redirect_to(controller: 'login', action: 'index')
  end

  private

      def event_params
        params.require(:event).permit(:name, :description)
      end
end

class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  
  def index
    @events = Event.all
  end

  def new
    @test = Test.find(params[:test_id])
    @event = Event.new
    @event.build_test
  end

  def edit
  end

  def update
    respond_to do |format|
      if @test.events.update(event_params)
        format.html { redirect_to test_path(@test), notice: 'Event was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def create
    @test = Test.find(params[:test_id])
    @test.events << Event.new(event_params)

    respond_to do |format|
      if @test.save
        format.html { redirect_to test_path(@test), notice: 'Event was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def destroy
    @test.events.destroy
    respond_to do |format|
      format.html { redirect_to test_path(@test), notice: 'Event was successfully deleted.' }
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @test = Test.find(params[:test_id])
      @event = @test.events.find(params[:id])
    end
  
   # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:event_name, :event_date, :event_outcome)
    end
    
end

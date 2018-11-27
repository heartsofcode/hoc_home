class CalendarsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_calendar, except: [:index]

  # GET /calendars
  def index
  end

  # GET /calendars/1
  def show
    @other_calendars = Calendar.where.not(id: @calendar.id)
    if @calendar.show_all_events?
      @events = Event.all.flat_map do |event|
        event.calendar_events(params.fetch(:start_date, Time.zone.now).to_date)
      end
    else
      @events = @calendar.events.flat_map do |event|
        event.calendar_events(params.fetch(:start_date, Time.zone.now).to_date)
      end
    end
  end

  # GET /calendars/new
  def new
    @calendar = Calendar.new
  end

  # GET /calendars/1/edit
  def edit
  end

  # POST /calendars
  def create
    @calendar = Calendar.new(calendar_params)

    respond_to do |format|
      if @calendar.save
        format.html { redirect_to @calendar, notice: 'Calendar was successfully created.' }
        format.json { render :show, status: :created, location: @calendar }
      else
        format.html { render :new }
        format.json { render json: @calendar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /calendars/1
  def update
    respond_to do |format|
      if @calendar.update(calendar_params)
        format.html { redirect_to @calendar, notice: 'Calendar was successfully updated.' }
        format.json { render :show, status: :ok, location: @calendar }
      else
        format.html { render :edit }
        format.json { render json: @calendar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calendars/1
  def destroy
    @calendar.destroy
    respond_to do |format|
      format.html { redirect_to calendars_url, notice: 'Calendar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calendar
      @calendar = Calendar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def calendar_params
      params.require(:calendar).permit(:name)
    end
end

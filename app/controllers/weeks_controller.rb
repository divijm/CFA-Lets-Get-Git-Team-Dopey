class WeeksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_week, only: [:show, :edit, :update, :destroy]

  # GET /weeks
  # GET /weeks.json
  def index
    @weeks = Week.all
    @topics = Topic.all
    @questions = Question.where(topic_id: params[:id])
    @events = Event.where("topic_id": params[:id])
  end

  # GET /weeks/1
  # GET /weeks/1.json
  def show
    @topics = Topic.where("week_id": params[:id])
    @questions = Question.where("topic_id": params[:id])
    @events = Event.where("topic_id": params[:id])
  end

  # GET /weeks/new
  def new
    @week = Week.new
  end

  # GET /weeks/1/edit
  def edit
    authorize @week
  end

  # POST /weeks
  # POST /weeks.json
  def create
    @week = Week.new(week_params)
    authorize @week

    respond_to do |format|
      if @week.save
        format.html { redirect_to @week, notice: 'Week was successfully created.' }
        format.json { render :show, status: :created, location: @week }
      else
        format.html { render :new }
        format.json { render json: @week.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weeks/1
  # PATCH/PUT /weeks/1.json
  def update
    authorize @week
    respond_to do |format|
      if @week.update(week_params)
        format.html { redirect_to @week, notice: 'Week was successfully updated.' }
        format.json { render :show, status: :ok, location: @week }
      else
        format.html { render :edit }
        format.json { render json: @week.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weeks/1
  # DELETE /weeks/1.json
  def destroy
    authorize @week
    @week.destroy
    respond_to do |format|
      format.html { redirect_to weeks_url, notice: 'Week was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_week
      @week = Week.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def week_params
      params.require(:week).permit(:week_number, :term)
    end

    def authorize_user
      authorize @week
    end
end

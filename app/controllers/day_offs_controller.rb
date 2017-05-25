class DayOffsController < ApplicationController
  before_action :set_day_off, only: [:show, :edit, :update, :destroy]

  # GET /day_offs
  # GET /day_offs.json
  def index
    @day_offs = DayOff.all
  end

  # GET /day_offs/1
  # GET /day_offs/1.json
  def show
  end

  # GET /day_offs/new
  def new
    @day_off = DayOff.new
  end

  # GET /day_offs/1/edit
  def edit
  end

  # POST /day_offs
  # POST /day_offs.json
  def create
    @day_off = DayOff.new(day_off_params)

    respond_to do |format|
      if @day_off.save
        format.html { redirect_to @day_off, notice: 'Day off was successfully created.' }
        format.json { render :show, status: :created, location: @day_off }
      else
        format.html { render :new }
        format.json { render json: @day_off.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /day_offs/1
  # PATCH/PUT /day_offs/1.json
  def update
    respond_to do |format|
      if @day_off.update(day_off_params)
        format.html { redirect_to @day_off, notice: 'Day off was successfully updated.' }
        format.json { render :show, status: :ok, location: @day_off }
      else
        format.html { render :edit }
        format.json { render json: @day_off.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /day_offs/1
  # DELETE /day_offs/1.json
  def destroy
    @day_off.destroy
    respond_to do |format|
      format.html { redirect_to day_offs_url, notice: 'Day off was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_day_off
      @day_off = DayOff.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def day_off_params
      params.require(:day_off).permit(:off_plan)
    end
end

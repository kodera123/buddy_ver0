class BuddySheetsController < ApplicationController
  before_action :set_buddy_sheet, only: [:show, :edit, :update, :destroy]

  # GET /buddy_sheets
  # GET /buddy_sheets.json
  def index
    @buddy_sheets = BuddySheet.all
  end

  # GET /buddy_sheets/1
  # GET /buddy_sheets/1.json
  def show
  end

  # GET /buddy_sheets/new
  def new
    @buddy_sheet = BuddySheet.new
  end

  # GET /buddy_sheets/1/edit
  def edit
  end

  # POST /buddy_sheets
  # POST /buddy_sheets.json
  def create
      @buddy_sheet = BuddySheet.new(buddy_sheet_params)
      @buddy_sheet.user_id = current_user.id
      respond_to do |format|
        if current_user.buddy_sheet.blank? && @buddy_sheet.save
          format.html { redirect_to @buddy_sheet, notice: 'Buddy sheet was successfully created.' }
          format.json { render :show, status: :created, location: @buddy_sheet }
        else
          format.html { render :new }
          format.json { render json: @buddy_sheet.errors, status: :unprocessable_entity }
        end
      end
    end

  # PATCH/PUT /buddy_sheets/1
  # PATCH/PUT /buddy_sheets/1.json
  def update
    respond_to do |format|
      if @buddy_sheet.update(buddy_sheet_params)
        format.html { redirect_to @buddy_sheet, notice: 'Buddy sheet was successfully updated.' }
        format.json { render :show, status: :ok, location: @buddy_sheet }
      else
        format.html { render :edit }
        format.json { render json: @buddy_sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buddy_sheets/1
  # DELETE /buddy_sheets/1.json
  def destroy
    @buddy_sheet.destroy
    respond_to do |format|
      format.html { redirect_to buddy_sheets_url, notice: 'Buddy sheet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buddy_sheet
      @buddy_sheet = BuddySheet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def buddy_sheet_params
      params.require(:buddy_sheet).permit(:start_at, :period)
    end
end

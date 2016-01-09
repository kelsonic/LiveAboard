class LiveAboardsController < ApplicationController
  before_action :set_live_aboard, only: [:show, :edit, :update, :destroy]

  # GET /live_aboards
  # GET /live_aboards.json
  def index
    @live_aboards = LiveAboard.all
  end

  # GET /live_aboards/1
  # GET /live_aboards/1.json
  def show
  end

  # GET /live_aboards/new
  def new
    @live_aboard = LiveAboard.new
  end

  # GET /live_aboards/1/edit
  def edit
  end

  # POST /live_aboards
  # POST /live_aboards.json
  def create
    @live_aboard = LiveAboard.new(live_aboard_params)

    respond_to do |format|
      if @live_aboard.save
        format.html { redirect_to @live_aboard, notice: 'Live aboard was successfully created.' }
        format.json { render :show, status: :created, location: @live_aboard }
      else
        format.html { render :new }
        format.json { render json: @live_aboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /live_aboards/1
  # PATCH/PUT /live_aboards/1.json
  def update
    respond_to do |format|
      if @live_aboard.update(live_aboard_params)
        format.html { redirect_to @live_aboard, notice: 'Live aboard was successfully updated.' }
        format.json { render :show, status: :ok, location: @live_aboard }
      else
        format.html { render :edit }
        format.json { render json: @live_aboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /live_aboards/1
  # DELETE /live_aboards/1.json
  def destroy
    @live_aboard.destroy
    respond_to do |format|
      format.html { redirect_to live_aboards_url, notice: 'Live aboard was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_live_aboard
      @live_aboard = LiveAboard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def live_aboard_params
      params.require(:live_aboard).permit(:name, :address, :phone, :website)
    end
end

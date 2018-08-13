class CronsController < ApplicationController
  before_action :set_cron, only: [:show, :edit, :update, :destroy]

  # GET /crons
  # GET /crons.json
  def index
    @crons = Cron.all
  end

  # GET /crons/1
  # GET /crons/1.json
  def show
  end

  # GET /crons/new
  def new
    @cron = Cron.new
  end

  # GET /crons/1/edit
  def edit
  end

  # POST /crons
  # POST /crons.json
  def create
    @cron = Cron.new(cron_params)

    respond_to do |format|
      if @cron.save
        format.html { redirect_to @cron, notice: 'Cron was successfully created.' }
        format.json { render :show, status: :created, location: @cron }
      else
        format.html { render :new }
        format.json { render json: @cron.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crons/1
  # PATCH/PUT /crons/1.json
  def update
    respond_to do |format|
      if @cron.update(cron_params)
        format.html { redirect_to @cron, notice: 'Cron was successfully updated.' }
        format.json { render :show, status: :ok, location: @cron }
      else
        format.html { render :edit }
        format.json { render json: @cron.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crons/1
  # DELETE /crons/1.json
  def destroy
    @cron.destroy
    respond_to do |format|
      format.html { redirect_to crons_url, notice: 'Cron was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cron
      @cron = Cron.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cron_params
      params.require(:cron).permit(:name, :unique_id, :url, :expression, :grace_period, :enabled)
    end
end

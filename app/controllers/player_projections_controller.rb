class PlayerProjectionsController < ApplicationController
  before_action :set_player_projection, only: [:show, :edit, :update, :destroy]

  # GET /player_projections
  # GET /player_projections.json
  def index
    @player_projections = PlayerProjection.all
  end

  # GET /player_projections/1
  # GET /player_projections/1.json
  def show
  end

  # GET /player_projections/new
  def new
    @player_projection = PlayerProjection.new
  end

  # GET /player_projections/1/edit
  def edit
  end

  # POST /player_projections
  # POST /player_projections.json
  def create
    @player_projection = PlayerProjection.new(player_projection_params)

    respond_to do |format|
      if @player_projection.save
        format.html { redirect_to @player_projection, notice: 'Player projection was successfully created.' }
        format.json { render :show, status: :created, location: @player_projection }
      else
        format.html { render :new }
        format.json { render json: @player_projection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /player_projections/1
  # PATCH/PUT /player_projections/1.json
  def update
    respond_to do |format|
      if @player_projection.update(player_projection_params)
        format.html { redirect_to @player_projection, notice: 'Player projection was successfully updated.' }
        format.json { render :show, status: :ok, location: @player_projection }
      else
        format.html { render :edit }
        format.json { render json: @player_projection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /player_projections/1
  # DELETE /player_projections/1.json
  def destroy
    @player_projection.destroy
    respond_to do |format|
      format.html { redirect_to player_projections_url, notice: 'Player projection was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player_projection
      @player_projection = PlayerProjection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_projection_params
      params.require(:player_projection).permit(:player_id, :year, :fantasy_points, :completions, :attempts, :pass_yards, :pass_tds, :pass_ints, :rush_yards, :rush_tds)
    end
end

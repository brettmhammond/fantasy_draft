class FantasyPlayersController < ApplicationController
  before_action :set_fantasy_player, only: [:show, :edit, :update, :destroy]

  # GET /fantasy_players
  # GET /fantasy_players.json
  def index
    @fantasy_players = FantasyPlayer.all
  end

  # GET /fantasy_players/1
  # GET /fantasy_players/1.json
  def show
  end

  # GET /fantasy_players/new
  def new
    @fantasy_player = FantasyPlayer.new
  end

  # GET /fantasy_players/1/edit
  def edit
  end

  # POST /fantasy_players
  # POST /fantasy_players.json
  def create
    @fantasy_player = FantasyPlayer.new(fantasy_player_params)

    respond_to do |format|
      if @fantasy_player.save
        format.html { redirect_to @fantasy_player, notice: 'Fantasy player was successfully created.' }
        format.json { render :show, status: :created, location: @fantasy_player }
      else
        format.html { render :new }
        format.json { render json: @fantasy_player.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fantasy_players/1
  # PATCH/PUT /fantasy_players/1.json
  def update
    respond_to do |format|
      if @fantasy_player.update(fantasy_player_params)
        format.html { redirect_to @fantasy_player, notice: 'Fantasy player was successfully updated.' }
        format.json { render :show, status: :ok, location: @fantasy_player }
      else
        format.html { render :edit }
        format.json { render json: @fantasy_player.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fantasy_players/1
  # DELETE /fantasy_players/1.json
  def destroy
    @fantasy_player.destroy
    respond_to do |format|
      format.html { redirect_to fantasy_players_url, notice: 'Fantasy player was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fantasy_player
      @fantasy_player = FantasyPlayer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fantasy_player_params
      params.require(:fantasy_player).permit(:fantasy_league_id, :fantasy_team_id, :fantasy_draft_id, :player_id)
    end
end

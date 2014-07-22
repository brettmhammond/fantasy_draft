class FantasyLeagueFantasyTeamsController < ApplicationController
  before_action :set_fantasy_league_fantasy_team, only: [:show, :edit, :update, :destroy]

  # GET /fantasy_league_fantasy_teams
  # GET /fantasy_league_fantasy_teams.json
  def index
    @fantasy_league_fantasy_teams = FantasyLeagueFantasyTeam.all
  end

  # GET /fantasy_league_fantasy_teams/1
  # GET /fantasy_league_fantasy_teams/1.json
  def show
  end

  # GET /fantasy_league_fantasy_teams/new
  def new
    @fantasy_league_fantasy_team = FantasyLeagueFantasyTeam.new
  end

  # GET /fantasy_league_fantasy_teams/1/edit
  def edit
  end

  # POST /fantasy_league_fantasy_teams
  # POST /fantasy_league_fantasy_teams.json
  def create
    @fantasy_league_fantasy_team = FantasyLeagueFantasyTeam.new(fantasy_league_fantasy_team_params)

    respond_to do |format|
      if @fantasy_league_fantasy_team.save
        format.html { redirect_to @fantasy_league_fantasy_team, notice: 'Fantasy league fantasy team was successfully created.' }
        format.json { render :show, status: :created, location: @fantasy_league_fantasy_team }
      else
        format.html { render :new }
        format.json { render json: @fantasy_league_fantasy_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fantasy_league_fantasy_teams/1
  # PATCH/PUT /fantasy_league_fantasy_teams/1.json
  def update
    respond_to do |format|
      if @fantasy_league_fantasy_team.update(fantasy_league_fantasy_team_params)
        format.html { redirect_to @fantasy_league_fantasy_team, notice: 'Fantasy league fantasy team was successfully updated.' }
        format.json { render :show, status: :ok, location: @fantasy_league_fantasy_team }
      else
        format.html { render :edit }
        format.json { render json: @fantasy_league_fantasy_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fantasy_league_fantasy_teams/1
  # DELETE /fantasy_league_fantasy_teams/1.json
  def destroy
    @fantasy_league_fantasy_team.destroy
    respond_to do |format|
      format.html { redirect_to fantasy_league_fantasy_teams_url, notice: 'Fantasy league fantasy team was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fantasy_league_fantasy_team
      @fantasy_league_fantasy_team = FantasyLeagueFantasyTeam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fantasy_league_fantasy_team_params
      params.require(:fantasy_league_fantasy_team).permit(:fantasy_league_id, :fantasy_team_id)
    end
end

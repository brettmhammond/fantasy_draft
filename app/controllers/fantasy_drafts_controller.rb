class FantasyDraftsController < ApplicationController
  before_action :set_fantasy_draft, only: [:edit, :update, :destroy]

  # GET /drafts
  # GET /drafts.json
  def index
    @fantasy_drafts = FantasyDraft.all
  end

  def manager
    @fantasy_league = FantasyLeague.includes(:fantasy_teams).find(params[:fantasy_league_id])
    @fantasy_draft = FantasyDraft.find(params[:fantasy_draft_id])
    @fantasy_players = FantasyPlayer.where(fantasy_draft_id: params[:fantasy_draft_id], fantasy_league_id: params[:fantasy_league_id]).order('id DESC')

    if @fantasy_players.any?
      @players = Player.all.order('name').where('id not in (?)', @fantasy_players.map(&:player_id)).includes(:position, :team).map { |player| ["#{player.name} (#{player.position.name}) - #{player.team.key} ",player.id]}
    else
      @players = Player.all.order('name').includes(:position, :team).map { |player| ["#{player.name} (#{player.position.name}) - #{player.team.key} ",player.id]}
    end

    @fantasy_player = FantasyPlayer.new(:fantasy_league_id => params[:fantasy_league_id], :fantasy_draft_id => params[:fantasy_draft_id])

  end

  # GET /drafts/1
  # GET /drafts/1.json
  def show
    @fantasy_league       = FantasyLeague.includes(:fantasy_teams).find(params[:fantasy_league_id])
    @fantasy_draft        = FantasyDraft.find(params[:id])
    @fantasy_draft_orders = FantasyDraftOrder.where(fantasy_league_id: params[:fantasy_league_id], fantasy_draft_id: params[:id]).order('position ASC')
    @fantasy_players      = FantasyPlayer.where(fantasy_draft_id: params[:id], fantasy_league_id: params[:fantasy_league_id]).order('id DESC')


    temp_keys = Array.new
    temp_counter = 0
    @fantasy_players.each do
      temp_keys << temp_counter
      temp_counter += 1

    end

    # raise temp_keys.to_yaml
    # raise @fantasy_players.to_yaml

    # Build out the fantasy order so we can easily loop through it
    @fantasy_order = Array.new

    counter = 0
    @fantasy_draft.rounds.times do

      @fantasy_draft_orders.each do |fantasy_draft_order|
        if not temp_keys.include? counter
          @fantasy_order << fantasy_draft_order.fantasy_team
        end
        counter += 1
      end

    end

    # raise @fantasy_order.to_yaml
    # raise @fantasy_draft_orders.to_yaml







    render layout: "draft_board"
  end

  # GET /drafts/new
  def new
    @fantasy_league = FantasyLeague.find(params[:fantasy_league_id])
    @fantasy_draft = FantasyDraft.new(:fantasy_league_id => params[:fantasy_league_id])
  end

  # GET /drafts/1/edit
  def edit
    @fantasy_league = FantasyLeague.find(params[:fantasy_league_id])
  end

  # POST /drafts
  # POST /drafts.json
  def create
    @fantasy_draft = FantasyDraft.new(fantasy_draft_params)

    respond_to do |format|
      if @fantasy_draft.save
        format.html { redirect_to fantasy_league_url(@fantasy_draft.fantasy_league_id), notice: 'Draft was successfully created.' }
        format.json { render :show, status: :created, location: @fantasy_draft }
      else
        format.html { render :new }
        format.json { render json: @fantasy_draft.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /drafts/1
  # PATCH/PUT /drafts/1.json
  def update
    respond_to do |format|
      if @fantasy_draft.update(fantasy_draft_params)

        if params[:fantasy_draft][:redirect_to].to_s == 'manager'
          format.html { redirect_to fantasy_league_fantasy_draft_manager_path(@fantasy_draft.fantasy_league_id, @fantasy_draft), notice: 'Draft was successfully updated.' }
        else
          format.html { redirect_to fantasy_league_url(@fantasy_draft.fantasy_league_id), notice: 'Draft was successfully updated.' }
        end

        format.json { render :show, status: :ok, location: @fantasy_draft }
      else
        format.html { render :edit }
        format.json { render json: @fantasy_draft.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drafts/1
  # DELETE /drafts/1.json
  def destroy
    @fantasy_draft.destroy
    respond_to do |format|
      format.html { redirect_to fantasy_league_url(@fantasy_draft.fantasy_league_id), notice: 'Draft was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fantasy_draft
      @fantasy_draft = FantasyDraft.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fantasy_draft_params
      params.require(:fantasy_draft).permit(:fantasy_league_id, :fantasy_draft_style_id, :player_id, :max_amount, :rounds)
    end
end

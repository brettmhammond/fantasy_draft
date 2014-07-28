class FantasyDraftsController < ApplicationController
  before_action :set_fantasy_draft, only: [:show, :edit, :update, :destroy]

  # GET /drafts
  # GET /drafts.json
  def index
    @fantasy_drafts = FantasyDraft.all
  end

  # GET /drafts/1
  # GET /drafts/1.json
  def show
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
        format.html { redirect_to fantasy_league_url(@fantasy_draft.fantasy_league_id), notice: 'Draft was successfully updated.' }
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

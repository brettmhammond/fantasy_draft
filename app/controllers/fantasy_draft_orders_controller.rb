class FantasyDraftOrdersController < ApplicationController
  before_action :set_fantasy_draft_order, only: [:show, :edit, :update, :destroy]

  # GET /fantasy_draft_orders
  # GET /fantasy_draft_orders.json
  def index
    @fantasy_league = FantasyLeague.includes(:fantasy_teams).find(params[:fantasy_league_id])
    @fantasy_draft = FantasyDraft.find(params[:fantasy_draft_id])
    @fantasy_draft_orders = FantasyDraftOrder.where(fantasy_league_id: params[:fantasy_league_id], fantasy_draft_id: params[:fantasy_draft_id]).order('position ASC')

    # If we do not have any order we take the teams loop through them and
    # do a manual entry in the table of all teams so that we can have a
    # default list to deal with from the start
    if @fantasy_draft_orders.empty?

      counter = 1
      @fantasy_league.fantasy_teams.each do |fantasy_team|

        fantasy_draft_order = FantasyDraftOrder.new
        fantasy_draft_order.fantasy_league_id = @fantasy_league.id.to_i
        fantasy_draft_order.fantasy_team_id = fantasy_team.id.to_i
        fantasy_draft_order.fantasy_draft_id = @fantasy_draft.id.to_i
        fantasy_draft_order.position = counter.to_i

        fantasy_draft_order.save
        counter += 1

      end

      @fantasy_draft_orders = FantasyDraftOrder.where(fantasy_league_id: params[:fantasy_league_id], fantasy_draft_id: params[:fantasy_draft_id]).order('position ASC')
    end

  end

  # GET /fantasy_draft_orders/1
  # GET /fantasy_draft_orders/1.json
  def show
  end

  # GET /fantasy_draft_orders/new
  def new
    @fantasy_draft_order = FantasyDraftOrder.new
  end

  # GET /fantasy_draft_orders/1/edit
  def edit
    @fantasy_league = FantasyLeague.find(params[:fantasy_league_id])
    @fantasy_draft = FantasyDraft.find(params[:fantasy_draft_id])
  end

  # POST /fantasy_draft_orders
  # POST /fantasy_draft_orders.json
  def create
    @fantasy_draft_order = FantasyDraftOrder.new(fantasy_draft_order_params)

    respond_to do |format|
      if @fantasy_draft_order.save
        format.html { redirect_to fantasy_league_fantasy_draft_fantasy_draft_orders_path(@fantasy_draft_order.fantasy_league_id, @fantasy_draft_order.fantasy_draft_id), notice: 'Fantasy draft order was successfully created.' }
        format.json { render :show, status: :created, location: @fantasy_draft_order }
      else
        format.html { render :new }
        format.json { render json: @fantasy_draft_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fantasy_draft_orders/1
  # PATCH/PUT /fantasy_draft_orders/1.json
  def update
    respond_to do |format|
      if @fantasy_draft_order.update(fantasy_draft_order_params)
        format.html { redirect_to fantasy_league_fantasy_draft_fantasy_draft_orders_path(@fantasy_draft_order.fantasy_league_id, @fantasy_draft_order.fantasy_draft_id), notice: 'Fantasy draft order was successfully updated.' }
        format.json { render :show, status: :ok, location: @fantasy_draft_order }
      else
        format.html { render :edit }
        format.json { render json: @fantasy_draft_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fantasy_draft_orders/1
  # DELETE /fantasy_draft_orders/1.json
  def destroy
    @fantasy_draft_order.destroy
    respond_to do |format|
      format.html { redirect_to fantasy_league_fantasy_draft_fantasy_draft_orders_path(@fantasy_draft_order.fantasy_league_id, @fantasy_draft_order.fantasy_draft_id), notice: 'Fantasy draft order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fantasy_draft_order
      @fantasy_draft_order = FantasyDraftOrder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fantasy_draft_order_params
      params.require(:fantasy_draft_order).permit(:fantasy_league_id, :fantasy_team_id, :fantasy_draft_id, :position)
    end
end

class PlayerAuctionValuesController < ApplicationController
  before_action :set_player_auction_value, only: [:show, :edit, :update, :destroy]

  # GET /player_auction_values
  # GET /player_auction_values.json
  def index
    @player_auction_values = PlayerAuctionValue.includes(:player, :team, :position).order('max_price DESC')
  end

  # GET /player_auction_values/1
  # GET /player_auction_values/1.json
  def show
  end

  # GET /player_auction_values/new
  def new
    @player_auction_value = PlayerAuctionValue.new
  end

  # GET /player_auction_values/1/edit
  def edit
  end

  # POST /player_auction_values
  # POST /player_auction_values.json
  def create
    @player_auction_value = PlayerAuctionValue.new(player_auction_value_params)

    respond_to do |format|
      if @player_auction_value.save
        format.html { redirect_to @player_auction_value, notice: 'Player auction value was successfully created.' }
        format.json { render :show, status: :created, location: @player_auction_value }
      else
        format.html { render :new }
        format.json { render json: @player_auction_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /player_auction_values/1
  # PATCH/PUT /player_auction_values/1.json
  def update
    respond_to do |format|
      if @player_auction_value.update(player_auction_value_params)
        format.html { redirect_to @player_auction_value, notice: 'Player auction value was successfully updated.' }
        format.json { render :show, status: :ok, location: @player_auction_value }
      else
        format.html { render :edit }
        format.json { render json: @player_auction_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /player_auction_values/1
  # DELETE /player_auction_values/1.json
  def destroy
    @player_auction_value.destroy
    respond_to do |format|
      format.html { redirect_to player_auction_values_url, notice: 'Player auction value was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player_auction_value
      @player_auction_value = PlayerAuctionValue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_auction_value_params
      params.require(:player_auction_value).permit(:player_id, :year, :min_price, :max_price, :avg_price)
    end
end

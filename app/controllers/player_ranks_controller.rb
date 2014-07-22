class PlayerRanksController < ApplicationController
  before_action :set_player_rank, only: [:show, :edit, :update, :destroy]

  # GET /player_ranks
  # GET /player_ranks.json
  def index
    @player_ranks = PlayerRank.all
  end

  # GET /player_ranks/1
  # GET /player_ranks/1.json
  def show
  end

  # GET /player_ranks/new
  def new
    @player_rank = PlayerRank.new
  end

  # GET /player_ranks/1/edit
  def edit
  end

  # POST /player_ranks
  # POST /player_ranks.json
  def create
    @player_rank = PlayerRank.new(player_rank_params)

    respond_to do |format|
      if @player_rank.save
        format.html { redirect_to @player_rank, notice: 'Player rank was successfully created.' }
        format.json { render :show, status: :created, location: @player_rank }
      else
        format.html { render :new }
        format.json { render json: @player_rank.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /player_ranks/1
  # PATCH/PUT /player_ranks/1.json
  def update
    respond_to do |format|
      if @player_rank.update(player_rank_params)
        format.html { redirect_to @player_rank, notice: 'Player rank was successfully updated.' }
        format.json { render :show, status: :ok, location: @player_rank }
      else
        format.html { render :edit }
        format.json { render json: @player_rank.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /player_ranks/1
  # DELETE /player_ranks/1.json
  def destroy
    @player_rank.destroy
    respond_to do |format|
      format.html { redirect_to player_ranks_url, notice: 'Player rank was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player_rank
      @player_rank = PlayerRank.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_rank_params
      params.require(:player_rank).permit(:player_id, :year, :position_rank, :overall_rank)
    end
end

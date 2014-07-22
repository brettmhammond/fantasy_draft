class FantasyDraftStylesController < ApplicationController
  before_action :set_fantasy_draft_style, only: [:show, :edit, :update, :destroy]

  # GET /fantasy_draft_styles
  # GET /fantasy_draft_styles.json
  def index
    @fantasy_draft_styles = FantasyDraftStyle.all
  end

  # GET /fantasy_draft_styles/1
  # GET /fantasy_draft_styles/1.json
  def show
  end

  # GET /fantasy_draft_styles/new
  def new
    @fantasy_draft_style = FantasyDraftStyle.new
  end

  # GET /fantasy_draft_styles/1/edit
  def edit
  end

  # POST /fantasy_draft_styles
  # POST /fantasy_draft_styles.json
  def create
    @fantasy_draft_style = FantasyDraftStyle.new(fantasy_draft_style_params)

    respond_to do |format|
      if @fantasy_draft_style.save
        format.html { redirect_to @fantasy_draft_style, notice: 'Fantasy draft style was successfully created.' }
        format.json { render :show, status: :created, location: @fantasy_draft_style }
      else
        format.html { render :new }
        format.json { render json: @fantasy_draft_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fantasy_draft_styles/1
  # PATCH/PUT /fantasy_draft_styles/1.json
  def update
    respond_to do |format|
      if @fantasy_draft_style.update(fantasy_draft_style_params)
        format.html { redirect_to @fantasy_draft_style, notice: 'Fantasy draft style was successfully updated.' }
        format.json { render :show, status: :ok, location: @fantasy_draft_style }
      else
        format.html { render :edit }
        format.json { render json: @fantasy_draft_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fantasy_draft_styles/1
  # DELETE /fantasy_draft_styles/1.json
  def destroy
    @fantasy_draft_style.destroy
    respond_to do |format|
      format.html { redirect_to fantasy_draft_styles_url, notice: 'Fantasy draft style was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fantasy_draft_style
      @fantasy_draft_style = FantasyDraftStyle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fantasy_draft_style_params
      params.require(:fantasy_draft_style).permit(:name)
    end
end

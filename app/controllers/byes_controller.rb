class ByesController < ApplicationController
  before_action :set_bye, only: [:show, :edit, :update, :destroy]

  # GET /byes
  # GET /byes.json
  def index
    @byes = Bye.includes(:team)
  end

  # GET /byes/1
  # GET /byes/1.json
  def show
  end

  # GET /byes/new
  def new
    @bye = Bye.new
  end

  # GET /byes/1/edit
  def edit
  end

  # POST /byes
  # POST /byes.json
  def create
    @bye = Bye.new(bye_params)

    respond_to do |format|
      if @bye.save
        format.html { redirect_to @bye, notice: 'Bye was successfully created.' }
        format.json { render :show, status: :created, location: @bye }
      else
        format.html { render :new }
        format.json { render json: @bye.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /byes/1
  # PATCH/PUT /byes/1.json
  def update
    respond_to do |format|
      if @bye.update(bye_params)
        format.html { redirect_to @bye, notice: 'Bye was successfully updated.' }
        format.json { render :show, status: :ok, location: @bye }
      else
        format.html { render :edit }
        format.json { render json: @bye.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /byes/1
  # DELETE /byes/1.json
  def destroy
    @bye.destroy
    respond_to do |format|
      format.html { redirect_to byes_url, notice: 'Bye was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bye
      @bye = Bye.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bye_params
      params.require(:bye).permit(:team_id, :year, :week)
    end
end

class NotfoundsController < ApplicationController
  before_action :set_notfound, only: [:show, :edit, :update, :destroy]

  # GET /notfounds
  # GET /notfounds.json
  def index
    @notfounds = Notfound.all
  end

  # GET /notfounds/1
  # GET /notfounds/1.json
  def show
  end

  # GET /notfounds/new
  def new
    @notfound = Notfound.new
  end

  # GET /notfounds/1/edit
  def edit
  end

  # POST /notfounds
  # POST /notfounds.json
  def create
    @notfound = Notfound.new(notfound_params)

    respond_to do |format|
      if @notfound.save
        format.html { redirect_to @notfound, notice: 'Notfound was successfully created.' }
        format.json { render action: 'show', status: :created, location: @notfound }
      else
        format.html { render action: 'new' }
        format.json { render json: @notfound.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notfounds/1
  # PATCH/PUT /notfounds/1.json
  def update
    respond_to do |format|
      if @notfound.update(notfound_params)
        format.html { redirect_to @notfound, notice: 'Notfound was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @notfound.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notfounds/1
  # DELETE /notfounds/1.json
  def destroy
    @notfound.destroy
    respond_to do |format|
      format.html { redirect_to notfounds_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notfound
      @notfound = Notfound.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def notfound_params
      params.require(:notfound).permit(:site_url, :site_404)
    end
end

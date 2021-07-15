class AtriclesController < ApplicationController
  before_action :set_atricle, only: %i[ show edit update destroy ]

  # GET /atricles or /atricles.json
  def index
    @atricles = Atricle.all
  end

  # GET /atricles/1 or /atricles/1.json
  def show
  end

  # GET /atricles/new
  def new
    @atricle = Atricle.new
  end

  # GET /atricles/1/edit
  def edit
  end

  # POST /atricles or /atricles.json
  def create
    @atricle = Atricle.new(atricle_params)

    respond_to do |format|
      if @atricle.save
        format.html { redirect_to @atricle, notice: "Atricle was successfully created." }
        format.json { render :show, status: :created, location: @atricle }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @atricle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /atricles/1 or /atricles/1.json
  def update
    respond_to do |format|
      if @atricle.update(atricle_params)
        format.html { redirect_to @atricle, notice: "Atricle was successfully updated." }
        format.json { render :show, status: :ok, location: @atricle }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @atricle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /atricles/1 or /atricles/1.json
  def destroy
    @atricle.destroy
    respond_to do |format|
      format.html { redirect_to atricles_url, notice: "Atricle was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_atricle
      @atricle = Atricle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def atricle_params
      params.require(:atricle).permit(:title, :description)
    end
end

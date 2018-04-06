class RisksController < ApplicationController
  before_action :set_risk, only: [:show, :update, :destroy]

  # GET /risks
  def index
    @risks = Risk.all

    render json: @risks
  end

  # GET /risks/1
  def show
    render json: @risk
  end

  # POST /risks
  def create
    @risk = Risk.new(risk_params)

    if @risk.save
      render json: @risk, status: :created, location: @risk
    else
      render json: @risk.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /risks/1
  def update
    if @risk.update(risk_params)
      render json: @risk
    else
      render json: @risk.errors, status: :unprocessable_entity
    end
  end

  # DELETE /risks/1
  def destroy
    @risk.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_risk
      @risk = Risk.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def risk_params
      params.require(:risk).permit(:name, :description, :probability_of_happen, :impact, :treatment, :category, :residual_risk, :occurences)
    end
end

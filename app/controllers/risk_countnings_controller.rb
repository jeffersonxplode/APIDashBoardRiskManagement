class RiskCountningsController < ApplicationController
  before_action :set_risk_countning, only: [:show, :update, :destroy]

  # GET /risk_countnings
  def index
    @risk_countnings = RiskDoc.where(category: "Comunicação").all


    render json: @risk_countnings
  end

  # GET /risk_countnings/1
  def show
    render json: @risk_countning
  end

  # POST /risk_countnings
  def create
    @risk_countning = RiskCountning.new(risk_countning_params)

    if @risk_countning.save
      render json: @risk_countning, status: :created, location: @risk_countning
    else
      render json: @risk_countning.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /risk_countnings/1
  def update
    if @risk_countning.update(risk_countning_params)
      render json: @risk_countning
    else
      render json: @risk_countning.errors, status: :unprocessable_entity
    end
  end

  # DELETE /risk_countnings/1
  def destroy
    @risk_countning.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_risk_countning
      @risk_countning = RiskCountning.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def risk_countning_params
      params.fetch(:risk_countning, {})
    end
end

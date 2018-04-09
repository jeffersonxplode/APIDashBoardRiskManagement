class RiskDocsController < ApplicationController
  before_action :set_risk_doc, only: [:show, :update, :destroy]

  # GET /risk_docs
  def index
    @risk_docs = RiskDoc.all

    render json: @risk_docs
  end

  # GET /risk_docs/1
  def show
    render json: @risk_doc
  end

  # POST /risk_docs
  def create
    @risk_doc = RiskDoc.new(risk_doc_params)

    if @risk_doc.save
      render json: @risk_doc, status: :created, location: @risk_doc
    else
      render json: @risk_doc.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /risk_docs/1
  def update
    if @risk_doc.update(risk_doc_params)
      render json: @risk_doc
    else
      render json: @risk_doc.errors, status: :unprocessable_entity
    end
  end

  # DELETE /risk_docs/1
  def destroy
    @risk_doc.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_risk_doc
      @risk_doc = RiskDoc.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def risk_doc_params
      params.require(:risk_doc).permit(:name, :description, :probability_of_happen, :impact, :treatment, :category, :severity, :severity_str, :residual_risk, :occurrences)
    end
end

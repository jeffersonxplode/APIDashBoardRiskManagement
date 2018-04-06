class RiscosController < ApplicationController
  before_action :set_risco, only: [:show, :update, :destroy]

  # GET /riscos
  def index

    @riscos = Risco.order('severity DESC')

    render json: @riscos
  end

  # GET /riscos/1
  def show
    render json: @risco
  end

  # POST /riscos
  def create
    @risco = Risco.new(risco_params)

    if @risco.save
      render json: @risco, status: :created, location: @risco
    else
      render json: @risco.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /riscos/1
  def update
    if @risco.update(risco_params)
      render json: @risco
    else
      render json: @risco.errors, status: :unprocessable_entity
    end
  end

  # DELETE /riscos/1
  def destroy
    @risco.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_risco
      @risco = Risco.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def risco_params
      params.require(:risco).permit(:name, :description, :probability_of_happen, :impact, :severity, :treatment, :category, :residual_risk, :occurences)
    end
end

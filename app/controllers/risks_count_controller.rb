class RisksCountController < ApplicationController



  def getCategoriaComunicacao

  @riscos = RiskDoc.where(category: "Comunicação").count()
  render json: @riscos

  end

end

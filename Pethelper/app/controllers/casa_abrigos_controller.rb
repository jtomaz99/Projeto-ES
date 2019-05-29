class CasaAbrigosController < ApplicationController
  
  
  def new
    @casa_abrigo = CasaAbrigo.new
  end
  
  
  def create
    @casa_abrigo = CasaAbrigo.new(casaAbrigo_params)
    if @casa_abrigo.save
      flash[:success] = "Sucesso na Criação"
      redirect_to @casa_abrigo
    else
      render 'new'
    end
  end
  
  
  
   def show
    @casa_abrigo = CasaAbrigo.find(params[:id])
  end
  
  
  
   private

    def casaAbrigo_params
      params.require(:casa_abrigo).permit(:nome, :documento, :endereco, :telefone, :email, :site, :dadosBanc)
    end
  
end

class FuncionariosController < ApplicationController
  
 def new
    @funcionario = Funcionario.new
  end
  

  
  def newmanager
   @manager = Funcionario.new
 end
  
  
   def show
    @funcionario = Funcionario.find(params[:id])
  end
  
  
  
  
  def create
    @funcionario = Funcionario.new(funcionario_params)
    if @funcionario.save
      flash[:success] = "Cadastro realizado"
      redirect_to @funcionario
    else
      render 'new'
    end
  end
  
  

  
   private

    def funcionario_params
      params.require(:funcionario).permit(:matricula, :nome, :celular,:casa_id,:password, :password_confirmation, :role )
    end
    
    
  
end

class ClientesController < ApplicationController
    def index
       @clientes = Cliente.all 
    end

    def show
        @cliente = Cliente.find(params[:id]) 
    end

    def create
        @cliente = Cliente.new(clientes_params)
        return render "show", status: 201 if @cliente.save
            
        render json: @cliente.errors, status: 400     
    end

    private
    def clientes_params
        params.permit(:nome, :telefone, :cpf)
    end    
end

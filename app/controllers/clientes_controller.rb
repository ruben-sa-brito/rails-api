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

    def destroy
        return render json: {}, status: 204 if Cliente.find(params[:id]).destroy       
    end

    private
    def clientes_params
        params.permit(:nome, :telefone, :cpf)
    end    
end

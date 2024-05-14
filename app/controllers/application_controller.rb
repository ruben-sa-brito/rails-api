class ApplicationController < ActionController::API
    before_action :autenticacao

    private
    def autenticacao
        header_auth = request.headers['Authorization']
        return render json: {erro: "Token Bearer Obrigatório"}, status: 401 if header_auth.blank?
        token = header_auth.split(' ').last

        begin
            token_decoded = JWT.decode(token, TOKEN_JWT)
            id = token_decoded.first["data"]["id"] rescue 0
            @adm = Administrador.find(id)
        rescue => exception
            render json: {erro: "Token Bearer Obrigatório"}
        end
    end
end

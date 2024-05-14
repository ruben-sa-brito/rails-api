json.array!(@clientes) do |cliente|
    json.extract! cliente, :id, :nome, :cpf, :telefone, :created_at, :updated_at
end
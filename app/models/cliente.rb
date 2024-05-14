class Cliente < ApplicationRecord
    validates_presence_of :nome, :cpf, :telefone
    validates :cpf, :telefone, uniqueness: true
end

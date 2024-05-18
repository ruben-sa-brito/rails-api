class Administrador < ApplicationRecord
    validates :nome, :email, :senha, presence: true
    validates :email, uniqueness: true 

    before_save do
        unless self.senha_criptografada?
            self.atualizar_senha(self.senha)
        end    
    end
    
    def atualizar_senha(senha_descriptografada)
        self.salt = BCrypt::Engine.generate_salt
        self.senha = BCrypt::Password.create(senha_descriptografada + self.salt)
    end    

    
    private
    def senha_criptografada?
        BCrypt::Password.valid_hash?(self.senha)
    end    
end

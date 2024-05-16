class Administrador < ApplicationRecord
    validates :nome, :email, :senha, presence: true
    validates :email, uniqueness: true 

    before_save do
        unless self.senha_criptografada?
            self.senha = BCrypt::Password.create(self.senha)
        end    
    end 
    
    private
    def senha_criptografada?
        BCrypt::Password.valid_hash?(self.senha)
    end    
end

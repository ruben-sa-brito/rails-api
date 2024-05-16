# Rails Api

Explorando as funcionalidades basicas do rails com relação a apis rest,
as tabelas estão hospedada em um banco postgresql, para acessar recursos com os verbos basicos como get, post, patch ou delete, é necessario um token de autenticação que é gerado no processo de login, a api requer o token para as ações e possui um período de expiração. A senha(hash) dos administradores são salvas no banco de dados utilizando a gem 'bcrypt', aumentando a segurança dos dados mesmo que a base de dados seja comprometida.
Os dados de 'clientes' foram gerados utilizando a gem 'faker' do ruby contido em db/seeds.rb.

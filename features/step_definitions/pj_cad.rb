Dado("acesso o site do PJDigital com login {string} e senha {string}") do |nome, senha|
  @home = AcessoPJ.new
  @home.load
  @home.login nome, senha
end

Quando("acesso a funcionalidade CAU") do
  @menu = MenuCAU.new
  @menu.cau
  binding.pry
end

Dado("que estou na tela Cadastrar > Individual") do
  @menu.cad
  @menu.consultar
  @menu.individual
end

#Dado("preencho os dados do cliente") do
#  pending # Write code here that turns the phrase above into concrete actions
#end

#Quando("clico em salvar") do
#  pending # Write code here that turns the phrase above into concrete actions
#end

#Então("vejo a mensagem “Seus dados foram salvos.”") do
#  pending # Write code here that turns the phrase above into concrete actions
#end

#Dados("que estou na tela Dados da Empresa") do
#  pending # Write code here that turns the phrase above into concrete actions
#end

#Dados("preencho os campos obrigatórios") do
#  pending # Write code here that turns the phrase above into concrete actions
#end

#Quando("marco o botão salvar") do
#  pending # Write code here that turns the phrase above into concrete actions
#end

#Então("aparece a mensagem “Seus dados foram salvos.”") do
#  pending # Write code here that turns the phrase above into concrete actions
#end

#Dados("que estou na tela Endereço") do
#  pending # Write code here that turns the phrase above into concrete actions
#end

#Dados("preencho os campos") do
#  pending # Write code here that turns the phrase above into concrete actions
#end

#Quando("clico no botão salvar") do
#  pending # Write code here that turns the phrase above into concrete actions
#end

#Então("vejo os dados salvos") do
#  pending # Write code here that turns the phrase above into concrete actions
#end

#Dados("que estou na tela Contato") do
#  pending # Write code here that turns the phrase above into concrete actions
#end

#Dados("marco o usuário master") do
#  pending # Write code here that turns the phrase above into concrete actions
#end

#Quando("clico não opção salvar") do
#  pending # Write code here that turns the phrase above into concrete actions
#end

#Então("os dados são salvos") do
#  pending # Write code here that turns the phrase above into concrete actions
#end

#Dados("clico em não localizado") do
#  pending # Write code here that turns the phrase above into concrete actions
#end

#Quando("clico no salvar") do
#  pending # Write code here that turns the phrase above into concrete actions
#end

#Então("retorna a mensagem “Seus dados foram salvos.”") do
#  pending # Write code here that turns the phrase above into concrete actions
#end

#Quando("clico no elemento salvar") do
#  pending # Write code here that turns the phrase above into concrete actions
#end

#Então("vejo “Seus dados foram salvos.”") do
#  pending # Write code here that turns the phrase above into concrete actions
#end

#Dados("marco o produto") do
#  pending # Write code here that turns the phrase above into concrete actions
#end

#Dados("clico em integrações Netbank") do
#  pending # Write code here that turns the phrase above into concrete actions
#end

#Então("o sistema retorna a mensagem “Seus dados foram salvos.”") do
#  pending # Write code here that turns the phrase above into concrete actions
#end

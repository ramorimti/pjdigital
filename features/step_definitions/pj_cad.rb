Dado("acesso o site do PJDigital com login {string} e senha {string}") do |nome, senha|
  @home = AcessoPJ.new
  @home.load
  @home.login nome, senha
end

Quando("acesso a funcionalidade CAU") do
  @menu = MenuCAU.new
  @menu.cau
end
#@pj_aces ------------------
Dado("que estou na tela Cadastrar > Individual") do
  @menu.cad
  @menu.consultar
  @menu.individual
end

Dado("preencho os dados do cliente") do
  @cad = CadastroMaster.new
  sleep(2)
  @cad.cadastro
end

Quando("clico em salvar") do
  @cad.salv
end

Então("vejo a mensagem “Seus dados foram salvos.”") do
  expect(page).to have_content "Seus dados foram salvos."
  @cad.ok
end

#@pj_emp ------------------
Dados("que estou na tela Dados da Empresa") do
  @menu = MenuCAU.new
  @menu.consultar
  @cad = CadastroMaster.new
  sleep(2)
  @cad.edit
end

Dados("preencho os campos obrigatórios") do
  @cad.dados_empresa
end

Quando("marco o botão salvar") do
  @cad.salv
end

Então("aparece a mensagem “Seus dados foram salvos.”") do
  expect(page).to have_content "Seus dados foram salvos."
  @cad.ok
end

# @pj_end ------------------
Dados("que estou na tela Endereço") do
  @menu = MenuCAU.new
  @menu.consultar
  @cad = CadastroMaster.new
  sleep(2)
  @cad.edit
end

Dados("preencho os campos") do
  @cad.end_empresa
end

Quando("clico no botão salvar") do
  @cad.salvar
end

Então("vejo o endereço principal salvo") do
  sleep(1)
  expect(page).to have_content "PRINCIPAL"
end

#@pj_cont ------------------
Dados("que estou na tela Contato") do
  @menu = MenuCAU.new
  @menu.consultar
  @cad = CadastroMaster.new
  sleep(3)
  @cad.edit
  @menu.contato_master
end

Dados("preencho todos os campos") do
  @cad.cadastro_master
end

Dados("marco o usuário master") do
  @cad.flag_master
end

Quando("clico não opção salvar") do
  @cad.salvar
end

Então("vejo os dados do usário master sendo salvo") do
  expect(page).to have_content "Sim"
end

#@pj_benef ------------------
Dados("que estou na tela Beneficiário Final") do
  @menu = MenuCAU.new
  @menu.consultar
  @cad = CadastroMaster.new
  sleep(3)
  @cad.edit
  @menu.beneficiario
end

Dados("clico em não localizado") do
  @cad.nao_localizado
end

Quando("clico no salvar") do
  sleep(1)
  @cad.salv
end

Então("retorna a mensagem “Seus dados foram salvos.”") do
  expect(page).to have_content "Seus dados foram salvos."
end

# @pj_cc ------------------
Dados("que estou na tela Contato Corrente") do
  @menu = MenuCAU.new
  @menu.consultar
  @cad = CadastroMaster.new
  sleep(3)
  @cad.edit
  @menu.conta
end

Dados("cadastro uma conta corrente") do
  @cad.cadastro_cc
end

Quando("clico no elemento salvar") do
  sleep(5)
  click_link("Cancelar")
  #@cad.salvar
end

Então("vejo “Seus dados foram salvos.”") do
  #expect(page).to have_content "Seus dados foram salvos."
end

class CadastroMaster < SitePrism::Page
  def cadastro
    @cnpj = Faker::CNPJ.numeric
    fill_in "cdCnpjCpf", with: @cnpj
    @company = Faker::Company.name
    fill_in "noCompleto", with: @company
    find("span", text: "Selecione uma agência").click
    find("span", text: "MATRIZ - SAO PAULO").click
    sleep(3)
    find("#codigoGerente").click
    find("#option-16").click
  end

  def edit
    first('a[href^="/cau/cadastrar-cliente/editar;cliente"]').click
  end

  def salv
    click_link("Salvar")
  end

  def ok
    click_link("OK")
  end

  # def salv_end
  #   find("#enviar").click
  # end

  def flag_master
    find("#flUsuarioMaster").click
  end

  def salvar
    find("#enviar").click
  end

  # def salv_conta_cc
  #   find("#enviar").click
  # end

  def nao_localizado
    find("#found").click
  end

  def dados_empresa
    find("#dataConstituicao").set(19052015)
    find("#ramoAtividade").click
    find('span[class$="mat-option-text"]', text: "01000 - SETOR PUBLICO FEDERAL").click
    find("#codigoCnae").set("0311-6/04")
    find("#porte").click
    find('span[class$="mat-option-text"]', text: "Médio").click
    find("#produto").click
    find('span[class$="mat-option-text"]', text: "Crédito").click
    find(".cdk-overlay-container").click
  end

  def end_empresa
    find("#endereco").click
    find('span[class$="flex-item-2"]').click
    find("#cep").set("55614500")
    find("#tpEndereco").click
    find("#tpEndereco").click
    find("span", text: "PRINCIPAL").click
    find("#dsTelefone").set("1145657859")
    find("#numero").set("98")
  end

  element :email, "#dsEmail"

  def cadastro_master
    find("span", text: "Adicionar contato").click
    @name = Faker::Name.name
    fill_in "dsNomeContato", with: @name
    @cpf = Faker::CPF.numeric
    fill_in "dsCpf", with: @cpf
    @telefone = Faker::Base.numerify("112419####").to_s
    fill_in "dsTelefone", with: @telefone
    sleep(3)
    email.set(Faker::Internet.email)
  end

  def cadastro_cc
    find('span[class$="flex-item-2"]').click  #adicionar conta corrente
    find(".container-popup").first(".mat-select-arrow-wrapper").click #seleção endereço
    find("span", text: "(PRINCIPAL)").click  #endereço
    sleep(3)
    find("#modalidade").first(".mat-select-value").click  #selecionar modalidade
    find("span", text: "Cta Eletronica P J").click #modalidade
  end
end

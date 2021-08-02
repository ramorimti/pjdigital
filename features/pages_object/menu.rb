class MenuCAU < SitePrism::Page
  def cau
    click_link "CAU"
  end

  def cad
    click_link "Cadastrar"
  end

  def individual
    click_link "Individual"
  end

  def consultar
    click_link "Consultar"
  end

  element :menu, ".toogle-menu-container"

  def ocultar_menu
    menu.click
  end

  element :contato, "#contatoPessoaJuridica"

  def contato_master
    contato.click
  end

  element :contacorrente, "#conta"

  def conta
    contacorrente.click
  end
end

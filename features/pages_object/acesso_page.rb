class AcessoPJ < SitePrism::Page
  set_url "/cau/consultar-cliente"
  #set_url "teclado.jsp#"

  def login(nome, senha)
    find("#username").set nome
    find("#password").set senha
    find("#kc-login").click
  end
end

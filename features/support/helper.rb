# frozen_string_literal: true

module Helper
  def tirar_foto(nome_arquivo, resultado)
    caminho_arquivo = "reports/screenshots/test_#{resultado}"
    foto = "#{caminho_arquivo}/#{nome_arquivo}.png"
    page.save_screenshot(foto)
    #embed(page.driver.browser.screenshot_as(:base64), 'image/png', 'Clique aqui')
  end
end

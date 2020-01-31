# frozen_string_literal: true

describe 'Gerando boleto na Kabum' do
  it 'visitar a pagina' do
    visit 'https://www.kabum.com.br/cgi-local/site/produtos/descricao_ofertas.cgi?codigo=103547'
    page.find('div.textocomprar').click
    page.find('div.go-to-cart-button').click
    page.fill_in 'cep', with: '06454050'
    page.click_button 'OK'
    page.find('a.botao-finalizar').click
    page.fill_in 'textfield12', with: 'testautomationfcamara@gmail.com'
    page.fill_in 'senha', with: 'Fcamara2020'
    page.find('p:nth-child(9) > input[type=image]').click
    page.find('#botao-boleto-pagar').click
    page.find('.botao-finalizar').click
    expect(find('.box-heading__h1').text).to eql('Pedido realizado com sucesso')
  end
end

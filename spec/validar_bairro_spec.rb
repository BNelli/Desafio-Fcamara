# frozen_string_literal: true

describe 'API' do
  it 'validando bairro' do
    resultado = HTTParty.get('https://viacep.com.br/ws/04524030/json/')
    expect(resultado['bairro']).to eql('Moema')
  end
end

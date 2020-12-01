#encoding: utf-8


Dado('que eu tenha as informações do empregado') do
    #Já foi inicializado no hooks
  end

  
  Quando('eu solicite cadastrar o empregado') do
    @resposta_apiTeste = $apiTeste.post
  end
  
  Então('visualizo o resultado do empregado cadastrado com sucesso') do
    expect(@resposta_apiTeste.body).to include("#{@resposta_apiTeste["id"]}")
  end
  
  Então('visualizo o code da transacao {string}') do |code|
    expect(@resposta_apiTeste.code.to_s).to eq code
  end
  
  Quando('que seja sem o dado do empregado {string}') do |dados|
    $apiTeste.apiTeste_without(dados)
  end
  
  Então('visualizo o resultado do empregado cadastrado sem sucesso') do
    if (@resposta_apiTeste.code.to_s.eql?("400"))
        expect(@resposta_apiTeste.body).to include("errorDescription")
    else
        expect(@resposta_apiTeste.body).to eql(nil)
    end
  end
  

Quando('solicito a consulta do empregado pelo id {string}') do |dado|
    @resposta_apiTeste = $apiTeste.get_id($apiTeste.consult_dado(dado))
  end
  
  Quando('solicito a consulta de todos empregados') do
    @resposta_apiTeste = $apiTeste.get_all
  end
  
  Quando('desejo editar o empregado') do
    $apiTeste.body_put
  end
  
  Quando('solicito editar o emoregado com id {string}') do |dado|
    @resposta_apiTeste = $apiTeste.put(dado)
  end

Before '@apiTeste' do
    admissao = "#{FFaker::Time.date}"
    cargo = "#{FFaker::NameBR.name}"
    comissao = "#{Faker::Number.decimal(l_digits: 2)}"
    cpf = "#{FFaker::IdentificationBR.cpf}"
    departamentoId = 1
    nome = "#{FFaker::NameBR.name}"
    salario = "#{Faker::Number.decimal(l_digits: 2)}"
    sexo = ['Feminino', 'Masculino', 'Não-Binário']
    tipoContratacao = ['PJ', 'CLT']

  
    body = {
              "admissao": "#{admissao}",
              "cargo": "#{cargo}",
              "comissao": "#{comissao}",
              "cpf": "#{cpf}",
              "departamentoId": departamentoId,
              "nome": "#{nome}",
              "salario": "#{salario}",
              "sexo":"#{sexo.sample}",
              "tipoContratacao": "#{tipoContratacao.sample}"
            
    }
    $apiTeste = ApiTeste.new(@body)
end
  


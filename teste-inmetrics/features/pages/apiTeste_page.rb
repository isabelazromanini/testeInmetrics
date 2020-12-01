require_relative './../hooks/apiTeste_hook.rb'

class Empregado 
    include HTTParty
    base_uri $environments['HOST_API_TESTE']
    headers 'Content-Type' => 'application/json; charset=UTF-8'
    format :json

                  
  
    def initialize(body)
        @options = {:body => body}
    end


    def post
        self.class.post("/empregado/cadastrar",  @options)
        begin
            @empregadoId = response["empregadoId"]
            @code = response.code
            @nome = response["nome"]
            @cpf = response["cpf"]

            return response
          rescue Exception => e
      
          end
          @code = response.code
          return response
   end



   def body_put
    sexo = ['f', 'm', 'i']
    tipoContratacao = ['clt', 'pj']
    @options =  {
        :admissao => "#{FFaker::Time.date}",
        :cargo => "#{FFaker::NameBR.name}",
        :comissao => "#{Faker::Number.decimal(l_digits: 2)}",
        :cpf => "#{FFaker::IdentificationBR.cpf}",
        :departamentoId => 2,
        :nome => "#{FFaker::NameBR.name}",
        :salario => "#{Faker::Number.decimal(l_digits: 2)}",
        :sexo => "#{sexo.sample}",
        :tipoContratacao => "#{tipoContratacao.sample}"
      }
    
    return @options
  end
 

  def put(dado)
    case dado
    when "inexistente"
      response = self.class.put("/empregado/alterar/0", body: @options.to_json)
    when "invalido"
      response = self.class.put("/empregado/alterar/teste", body: @options.to_json)
    else
      # response = self.class.put("/people/#{@id_passenger["id"]}", body: @options.to_json)
        response = self.class.put("/empregado/alterar/#{@empregadoId}", body: @options.to_json)
    end
    return response
  end

  def apiTeste_without(attr)
    @options[attr.to_sym] = ""
  end 

  def consult_dado(dado)
    case dado
    when "valido"
      return @empregadoId
    when "inexistente"
      return @empregadoId = 1
    else
      return @empregadoId = FFaker::Lorem.word
    end
  end


  def get_all
    res = self.class.get("/empregado/list_all")
    return res
  end

  def get_id(empregadoId)
    begin
      response = self.class.get(URI.parse("/empregado/list/#{@empregadoId}"))
    rescue URI::InvalidURIError
      response = self.class.get(URI.parse(URI.escape("/empregado/list/#{@empregadoId}")))
    end
    return response
  end


end
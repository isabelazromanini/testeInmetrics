# encoding: utf-8
#language: pt

@apiTeste
Funcionalidade: Controle de Funcionario  
 Como administrador do sistema 
 Desejo gerenciar um empregado  
 Para administrar o seu acesso aos sistemas da empresa 


 Contexto:
   Dado que eu tenha as informações do empregado 
  
@novo_empregado  
Cenario: Fluxo Basico de Novo Empregado - Retorno 201 
   Quando eu solicite cadastrar o empregado  
   Então visualizo o resultado do empregado cadastrado com sucesso
   E visualizo o code da transacao "201"


# @novo_empregado_sem_campo_admissao
# Cenario: Fluxo Excecao de Novo Empregado Sem o Campo Admissao - Retorno 400 
#    Mas que seja sem o dado do empregado "admissao"
#    Quando eu solicite cadastrar o empregado  
#    Então visualizo o resultado do empregado cadastrado sem sucesso
#    E o code da transacao "400"

# @novo_empregado_sem_campo_cargo 
# Cenario: Fluxo Excecao de Novo Empregado Sem o Campo Cargo - Retorno 400 
#    Mas que seja sem o dado do empregado "cargo"
#    Quando eu solicite cadastrar o empregado  
#    Então visualizo o resultado do empregado cadastrado sem sucesso
#    E o code da transacao "400"

# @novo_empregado_sem_campo_comissao 
# Cenario: Fluxo Excecao de Novo Empregado Sem o Campo Comissao - Retorno 400 
#    Mas que seja sem o dado do empregado "comissao"
#    Quando eu solicite cadastrar o empregado  
#    Então visualizo o resultado do empregado cadastrado sem sucesso
#    E o code da transacao "400"

# @novo_empregado_sem_campo_cpf 
# Cenario: Fluxo Excecao de Novo Empregado Sem o Campo Cpf - Retorno 400 
#    Mas que seja sem o dado do empregado "cpf"
#    Quando eu solicite cadastrar o empregado  
#    Então visualizo o resultado do empregado cadastrado sem sucesso
#    E o code da transacao "400"

# @novo_empregado_sem_campo_departamentoId
# Cenario: Fluxo Excecao de Novo Empregado Sem o Campo DepartamentoId  - Retorno 400 
#    Mas que seja sem o dado do empregado "departamentoId"
#    Quando eu solicite cadastrar o empregado  
#    Então visualizo o resultado do empregado cadastrado sem sucesso
#    E o code da transacao "400"

# @novo_empregado_sem_campo_nome
# Cenario: Fluxo Excecao de Novo Empregado Sem o Campo Nome  - Retorno 400 
#    Mas que seja sem o dado do empregado "nome"
#    Quando eu solicite cadastrar o empregado  
#    Então visualizo o resultado do empregado cadastrado sem sucesso
#    E o code da transacao "400"

# @novo_empregado_sem_campo_salario 
# Cenario: Fluxo Excecao de Novo Empregado Sem o Campo Salario  - Retorno 400 
#    Mas que seja sem o dado do empregado "salario"
#    Quando eu solicite cadastrar o empregado  
#    Então visualizo o resultado do empregado cadastrado sem sucesso
#    E o code da transacao "400"

# @novo_empregado_sem_campo_sexo 
# Cenario: Fluxo Excecao de Novo Empregado Sem o Campo Sexo  - Retorno 400 
#    Mas que seja sem o dado do empregado "Sexo"
#    Quando eu solicite cadastrar o empregado  
#    Então visualizo o resultado do empregado cadastrado sem sucesso
#    E o code da transacao "400"

# @novo_empregado_sem_campo_tipoContratacao
# Cenario: Fluxo Excecao de Novo Empregado Sem o Campo TipoContratacao  - Retorno 400 
#    Mas que seja sem o dado do empregado "tipoContratacao"
#    Quando eu solicite cadastrar o empregado  
#    Então visualizo o resultado do empregado cadastrado sem sucesso
#    E o code da transacao "400"


# @novo_empregado_campo_invalido_departamentoId
# Cenario: Fluxo Excecao de Novo Empregado Com o Campo DepartamentoId Invalido  - Retorno 400 
#    Mas que seja sem o dado do empregado "tipoContratacao"
#    Quando eu solicite cadastrar o empregado  
#    Então visualizo o resultado do empregado cadastrado sem sucesso
#    E o code da transacao "400"


# @novo_empregado_nao_autorizado
# Cenario: Fluxo Excecao de Novo Empregado Com o Usuario Nao Autorizado  - Retorno 401  
#    Mas que seja com usuario nao autorizado 
#    Quando eu solicite cadastrar o empregado  
#    Então visualizo o resultado do empregado cadastrado sem sucesso
#    E o code da transacao "401"


@listar_empregado_id
 Cenario: Fluxo Básico de Consultar empregado pelo ID Válido - Código de Retorno 200
   Quando eu solicite cadastrar o empregado
   E solicito a consulta do empregado pelo id "valido"
   Então visualizo o resultado do empregado cadastrado com sucesso
   E visualizo o code da transacao "200"

@listar_empregados
Cenario: Fluxo Básico de Consultar os Passageiros - Código de Retorno 200
   Quando eu solicite cadastrar o empregado
   E solicito a consulta de todos empregados
   Então visualizo o resultado do empregado cadastrado com sucesso
   E visualizo o code da transacao "200"

@alterar_empregado
Cenário: Fluxo Básico de Edição de empregado - Código de Retorno 202
   Quando eu solicite cadastrar o empregado  
   Mas desejo editar o empregado
   Quando solicito editar o emoregado com id "valido" 
   Então visualizo o resultado do empregado cadastrado com sucesso
   E visualizo o code da transacao "202"


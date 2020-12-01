## Teste Inmetrics - Descrever como executar o projeto

Repositório de testes services 


### Técnicas e Estrutura Base de Projetos (API)

- [x] [Ruby]
    - [x] API 
        - [x] [HTTParty]
        - [x] [Cucumber]
        - [x] [rspec]
        - [x] [hooks]
        

## Configurando o projeto na maquina 


>Crie uma pasta na sua maquina 

>Faça o Clone do projeto 
...bash
$git clone 'https://github.com/isabelazromanini/testeInmetrics.git'
...

>Execute o comando  para instalar as dependências
```ruby
$ bundle install
```

>Rode o projeto usando o comando
```ruby
$ cucumber
```

## Padrão de criação de classes, arquivos e pastas 
>pasta features com subpastas:
    > hooks (criação de massas)
    utilizar o nome do serviço para criar o arquivo seguido pelo _hook.rb
    caso o serviço tenha 2 nomes o segundo vem com a primeira letra maiuscula
    ex: person_hook.rb  personServico_hook.rb

    > pages (criação dos metodos com links para cada end point)
    utilizar o nome do serviço para criar o arquivo seguido pelo _page.rb
    caso o serviço tenha 2 nomes o segundo vem com a primeira letra maiuscula
    ex: person_page.rb

    > specifications (BDD)
    utilizar o nome do serviço seguido pelo .feature
    caso o serviço tenha 2 nomes o segundo vem com a primeira letra maiuscula
    ex: person.feature

    > step_definitions (validação dos cenarios com retornos e comparações)
    utilizar o nome do serviço seguido pelo _steps.rb
    caso o serviço tenha 2 nomes o segundo vem com a primeira letra maiuscula
    ex: person_steps.rb

    >support
    arquivo env com tecnologias utilizadas no projeto

    >environments
    arquivo com configuração de ambientes de dev, hom e prod 



>pasta para configuração de relatorios (test_results)


## Criar um branch

1- Clonar o projeto em sua máquina (o nome do projeto está no BitBucket (Na aba Overview> O nome do projeto está do lado do Https), é só copiar e colar no comando).

```bash
 git clone [nomedoprojeto]
```

2- Criar uma branch para inserir suas modificações no código, lembrando que não será possível realizar alterações na branch Master, por isso deverá criar a sua própria branch (Como denifição de boas práticas, vamos colocar o nome do arquivo ou funcionalidade/serviço que estamos alterando).

```bash
git checkout -b [nomedabranch]
```

Se quiser verificar qual é a branch que está na sua máquina, use o comando (no terminal):

```bash
git branch
```

E se quiser verificar qual é a branch remoto, use (no terminal):

```bash
git branch -a
```

## Check-out e Commit nas criações e/ou alterações de código na sua branch

1- Realizar as criações e/ou  alterações no código;

2- Realizar o check-out no terminal.

```bash
git  checkout [nomedabranch]
```

3- Em seguida fazer o commit e inserir uma mensagem informando claramente qual alteração foi realizada.

```bash
git commit -m 'Inserir a mensagem da alteração'
```

## Pull request

1- Realizar o ``push request`` no terminal, inserindo o código abaixo, pra subir as alterações/inclusões realizadas.

```bash
git push origin [nomedabranch]
```

2- Realizar o ``pull request`` no ***BitBucket*** : Aba ****Pull Request**** > ****Create Pull Request**** > ***Preencher os campos de Title e Description e Selecionar a opção "Close branch" (explicação nas boas praticas)*** > ****Create pull request****.

## Code Review

1- Avisar os  adm's para que façam um code review e realizem a aprovação ou reprovação.

* Obs:Em caso de reprovação, será necessário realizar as alterações conforme as regras de codificação e depois fazer todo o processo novamente.


## Atualizar seu repositório local com a versão mais nova do repositório remoto

1 - Para atualizar para a versão mais nova:

```bash
git pull
```

## Sobrescrever alterações locais

1 - Se por ventura, você cometeu algo errado, e deseja sobrescrever as alterações locais, o comando abaixo, substituirá as alterações na sua árvore de trabalho com o conteúdo mais recente no HEAD (Master). Alterações já adicionadas ao index, bem como novos arquivos serão mantidos:

```bash
git checkout -- <arquivo>
```

2 - Se ao invés disso você desejar remover todas as alterações e commits locais, recupere o histórico mais recente do servidor e aponte para sua branch master local:

```bash
git fetch origin
```

```bash
git reset --hard origin/master
```

## Boas Práticas

1- Após o merge, se não selecionar a opção "Close branch" no pull request, realizar o exclusão da branch manualmente.Isso vai garantir que toda vez que for clonado o projeto, você estará realizando as alterações da ultima versão do código.

Exlusão da branch manualmente (no terminal).

```bash
git branch -d [nomedabranch]
```

2- No Code Review as convenções do editorconfig e rubocop vão ser cobrados.


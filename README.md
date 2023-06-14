## Executem os comando

### docker-compose run --no-deps app rails new . --force --database=postgresql --webpacker

#ERROR
Fetching gem metadata from https://rubygems.org/.
You have requested:
  listen ~> 3.2

The bundle currently has listen locked at 3.1.5.
Try running `bundle update listen`

If you are updating multiple gems in your Gemfile at once,
try passing them all to `bundle update`
ERROR: 7
➜  teste bundle update listen
Could not find gem 'listen'.
➜  teste bundle update       
Your Ruby version is 3.0.2, but your Gemfile specified 2.7.8

## Comando para correção do erro
docker-compose run app bundle update

## Proximos comandos  

$ sudo chown -R $USER:$USER .

$ sudo docker-compose up --build

## Configura Database

config/database.yml

## Subir a máquina

docker-compose up -d

## Criar o banco de dados

$ docker-compose run app rails db:create

## Se necessário instalar o yarn
https://classic.yarnpkg.com/en/docs/install/#debian-stable

## Comando pra rodar após incluir as Gems caso de errado e solicite alguma depedência

sudo docker-compose run app bundle exec figaro install

## Atualização da Gem

docker-compose run app bundle install

## Instalando Simple_form
docker-compose run app rails generate simple_form:install --bootstrap

## Instalando Devise
docker-compose run app rails generate devise:install

## Instalando e convertendo erb to haml

### Executar primeiro
docker-compose run app gem install html2haml

docker-compose run app rails generate haml:application_layout convert

### Executar
docker-compose run app rails haml:erb2haml
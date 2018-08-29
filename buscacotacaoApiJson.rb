#SCRIPT QUE BUSCA NO ALPHAVANTAGE.CO A COTAÇÃO DA SUA AÇÃO PREFERIDA

require 'rest-client'
require 'json'

puts 'Digite a sigla da ação que procura, ex.: SAPR11'
acao = gets.chomp
pesquisa = "https://www.alphavantage.co/query?function=TIME_SERIES_INTRADAY&symbol=#{acao}.SA&interval=15min&outputsize=full&apikey=S"
page =  JSON.parse(RestClient.get pesquisa)
valor = page.values[1].values[1].values[3]
puts "O valor atual é #{valor.slice(0,5)}"

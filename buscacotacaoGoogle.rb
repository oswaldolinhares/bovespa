#SCRIPT QUE BUSCA NO GOOGLE A COTAÇÃO DA SUA AÇÃO PREFERIDA

require 'nokogiri'
require 'open-uri'

url = 'https://www.google.com/finance?q=BVMF%3A'
puts 'Digite a sigla da ação que procura, ex.: SAPR11'
acao = gets.chomp
pesquisa = url+acao
page = Nokogiri::HTML(open(pesquisa))

valor = page.xpath('//b').children[2].text
puts "O valor atual é #{valor}"

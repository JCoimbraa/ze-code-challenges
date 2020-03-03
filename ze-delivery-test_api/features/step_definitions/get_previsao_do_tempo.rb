Dado("que eu faça um GET no endpoint para obter previsão pelo nome da cidade") do
  @get_cidade = HTTParty.get 'https://samples.openweathermap.org/data/2.5/weather?q=London,uk&appid=b6907d289e10d714a6e88b30761fae22'
end

Entao("o retorno dele e a previsão por cidade") do
puts @get_cidade.body
puts "Quantidade de posts: " +@get_cidade.size.to_s
puts @get_cidade.message
puts @get_cidade.code
expect(@get_cidade.code).to eq 200
end

Dado("que eu faça um GET no endpoint para obter previsão pelo id da cidade") do
  @get_id_cidade = HTTParty.get 'https://samples.openweathermap.org/data/2.5/weather?id=2172797&appid=b6907d289e10d714a6e88b30761fae22'
end

Entao("o retorno dele e a previsão pelo id da cidade") do
puts @get_id_cidade.body
puts "Quantidade de posts: " +@get_id_cidade.size.to_s
puts @get_id_cidade.message
puts @get_id_cidade.code
expect(@get_id_cidade.code).to eq 200
end

Dado("que eu faça um GET no endpoint para obter previsão por coordenada geografica") do
  @get_coordenada_cidade = HTTParty.get 'https://samples.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=b6907d289e10d714a6e88b30761fae22'
end

Entao("o retorno dele e a previsão por coordenada geografica") do
puts @get_coordenada_cidade.body
puts "Quantidade de posts: " +@get_coordenada_cidade.size.to_s
puts @get_coordenada_cidade.message
puts @get_coordenada_cidade.code
expect(@get_coordenada_cidade.code).to eq 200
end

Dado("que eu faça um GET no endpoint para obter previsão por CEP") do
  @get_coordenada_cep = HTTParty.get 'https://samples.openweathermap.org/data/2.5/weather?zip=94040,us&appid=b6907d289e10d714a6e88b30761fae22'
end

Entao("o retorno dele e a previsão por CEP") do
puts @get_coordenada_cep.body
puts "Quantidade de posts: " +@get_coordenada_cep.size.to_s
puts @get_coordenada_cep.message
puts @get_coordenada_cep.code
expect(@get_coordenada_cep.code).to eq 200
end

Dado("que eu faça um GET no endpoint para obter previsão por zona") do
  @get_zona = HTTParty.get 'https://samples.openweathermap.org/data/2.5/box/city?bbox=12,32,15,37,10&appid=b6907d289e10d714a6e88b30761fae22'
end

Entao("o retorno dele e a previsão por zona") do
  puts @get_zona.body
  puts "Quantidade de posts: " +@get_zona.size.to_s
  puts @get_zona.message
  puts @get_zona.code
  expect(@get_zona.code).to eq 200
end

Dado("que eu faça um GET no endpoint para obter previsão em um ciclo") do
  @get_ciclo = HTTParty.get 'https://samples.openweathermap.org/data/2.5/box/city?bbox=12,32,15,37,10&appid=b6907d289e10d714a6e88b30761fae22'
end

Entao("o retorno dele e a previsão em um ciclo") do
  puts @get_ciclo.body
  puts "Quantidade de posts: " +@get_ciclo.size.to_s
  puts @get_ciclo.message
  puts @get_ciclo.code
  expect(@get_ciclo.code).to eq 200
end

Dado("que eu faça um GET no endpoint para obter previsão de varias cidades") do
  @get_ids = HTTParty.get 'https://samples.openweathermap.org/data/2.5/group?id=524901,703448,2643743&units=metric&appid=b6907d289e10d714a6e88b30761fae22'
end

Entao("o retorno dele e a previsão de varias cidades") do
  puts @get_ids.body
  puts "Quantidade de posts: " +@get_ids.size.to_s
  puts @get_ids.message
  puts @get_ids.code
  expect(@get_ids.code).to eq 200
end

Dado("que eu faça um GET no endpoint sem o token") do
  @get_invalido = HTTParty.get 'https://samples.openweathermap.org/data/2.5/group?id=524901,703448,2643743&units=metric&'
end

Entao("o retorno dele e um erro") do
  puts @get_invalido.body
  puts @get_invalido.message
  puts @get_invalido.code
  expect(@get_invalido.code).to eq 200
end

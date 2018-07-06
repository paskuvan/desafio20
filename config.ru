# config.ru
require 'rack'
class MiPrimeraWebApp
  def call(env)
    if env['REQUEST_PATH'] == '/hola'
      [200, { 'Content-Type' => 'text/html' }, ['<h1> Estás en el Index! </h1>']]
  	elsif @url == '/otro'
  	 	 
      [200, { 'Content-Type' => 'text/html' }, ['<h1> Estás en otro landing </h1>']]
     else
      [400, { 'Content-Type' => 'text/html' }, ['<h1> 404 error not found </h1>']]
    end
  end
end
run MiPrimeraWebApp.new

# config.ru
require 'rack'
class MiPrimeraWebApp
  def call(env)
    if env['REQUEST_PATH'] == '/hola'
      [200, { 'Content-Type' => 'text/html' }, ['<h1> <i>Estás en el index</i> </h1>']]
  	else 
      [200, { 'Content-Type' => 'text/html' }, ['<h1> Estás en otro landing </h1>']]
     
      [400, { 'Content-Type' => 'text/html' }, ['<h1> 404 error not found </h1>']]
    end
  end
end
run MiPrimeraWebApp.new


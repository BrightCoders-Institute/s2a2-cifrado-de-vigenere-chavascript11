# This class contains the main Script of the application
require_relative 'cifrador'

def validar_cadena(input)
    /^[A-Za-z]+$/.match?(input)
end
  
  puts "Dame el mensaje"
  message = gets.chomp
  
  until validar_cadena(message)
    puts "Por favor, ingresa un mensaje válido (solo letras de la A a la Z):"
    message = gets.chomp
  end
  
  puts "Dame la clave"
  key = gets.chomp
  
  until validar_cadena(key)
    puts "Por favor, ingresa una clave válida (solo letras de la A a la Z):"
    key = gets.chomp
  end



cifrador = Cifrador.new(message.upcase, key.upcase)
puts cifrador.cifrar_mensaje


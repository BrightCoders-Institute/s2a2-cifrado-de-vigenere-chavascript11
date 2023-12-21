# This class contains the main Script of the application
require_relative 'cifrador'

puts "Dame el mensaje"
message = gets.chomp

puts "Dame la clave"
key = gets.chomp

cifrador = Cifrador.new(message, key)
puts cifrador.cifrar_mensaje


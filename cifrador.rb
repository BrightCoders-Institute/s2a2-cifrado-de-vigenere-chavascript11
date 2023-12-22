# frozen_string_literal: true

require_relative 'convertir'

class Cifrador
  def initialize(message, key)
    @message = message
    @key = key
  end

  def cifrar_mensaje
    # convertir mensaje en arreglo
    message_array = @message.chars
    key_array = @key.chars

    if message_array.length < key_array.length
      key_array = recortar_llave(key_array, message_array.length) # crear metodo para recortar llave
    elsif message_array.length > key_array.length
      key_array = repetir_llave(key_array, message_array.length) # crear metodo para repetir la llave
    end

    convertir = Convertir.new(message_array, key_array)
    convertir.convertir_a_numero
  end

  private

  def recortar_llave(key_array, length)
    key_array.take(length)
  end

  def repetir_llave(key_array, length)
    key_array.cycle.take(length)
  end
end

class Cifrador
    require_relative 'convertir'

    def initialize(message, key)
        @message = message
        @key = key
    end
    
    def cifrar_mensaje()
        #convertir mensaje en arreglo
        message_array = @message.chars
        key_array = @key.chars

        convertir = Convertir.new(message_array, key_array)
        convertir.convertir_a_numero
    end
        
end
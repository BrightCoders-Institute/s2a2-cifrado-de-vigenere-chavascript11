#this class is to convert the message or the key to a numeric value
class Convertir
    def initialize(message_array, key_array)
        @message_array = message_array
        @key_array = key_array
        @tabla_vignere = {
            'A' => 0,
            'B' => 1,
            'C' => 2,
            'D' => 3,
            'E' => 4,
            'F' => 5,
            'G' => 6,
            'H' => 7,
            'I' => 8,
            'J' => 9,
            'K' => 10,
            'L' => 11,
            'M' => 12,
            'N' => 13,
            'Ñ' => 14,
            'O' => 15,
            'P' => 16,
            'Q' => 17,
            'R' => 18,
            'S' => 19,
            'T' => 20,
            'U' => 21,
            'V' => 22,
            'W' => 23,
            'X' => 24,
            'Y' => 25,
            'Z' => 26,
        }
        @tabla_vignere_invertida = @tabla_vignere.invert
    end

    def convertir_a_numero()
        #convertir cada letra a numero
        @message_array.each_with_index do |letra, indice|
            @message_array[indice] = @tabla_vignere[letra]
        end

        @key_array.each_with_index do |letra, indice|
            @key_array[indice] = @tabla_vignere[letra]
        end

        #sumar los valores numericos
        sumar_valores(@message_array, @key_array)
    end

    #this function create the array which contain the encrypted number 
    #(then send it to other function to convert it to leters)
    def sumar_valores(message_to_number_array, key_to_number_array)
        encrypted_number_array = []
        message_to_number_array.each_with_index do |number, indice|
            encrypted_number_array[indice] = number + key_to_number_array[indice] 
        end

        numero_a_letra(encrypted_number_array)
    end

    #this method converts the numeric array to leters array 
    #then return the encrypted message
    def numero_a_letra(encrypted_number_array)
        encrypted_leters_array = []
        encrypted_number_array.each_with_index do |number, indice|
            encrypted_leters_array[indice] = @tabla_vignere_invertida[number]
        end

        return encrypted_message = encrypted_leters_array.join
    end



end
        

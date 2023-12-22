require 'minitest/autorun'
require_relative 'cifrador'

class TestEncryptor < Minitest::Test 
  def test_encrypt
    original_message = "HOLA"
    key = "SECR"
    encryptor = Cifrador.new(original_message, key)
    encrypted_message = encryptor.cifrar_mensaje
    
    assert_equal("ZSNR", encrypted_message)
  end
end

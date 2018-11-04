require_relative 'test_helper.rb'
require './lib/encryptor'

class EncryptorTest < Minitest::Test

  def setup
    indexed_message = [[7, 4, 11, 11], [14, 26, 22, 14], [17, 11, 3, "!"]]
    shift = mock("shift")
    shift.expects(:shift).returns({"A" => 3, "B" => 27, "C" => 73, "D" => 20})
    @encryptor = Encryptor.new(indexed_message, shift)
  end

  def test_it_exists
    assert_instance_of Encryptor, @encryptor
  end

end

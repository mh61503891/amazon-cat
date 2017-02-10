require 'test_helper'

class Amazon::CatTest < Minitest::Test

  def test_that_it_has_a_version_number
    refute_nil ::Amazon::Cat::VERSION
  end

end

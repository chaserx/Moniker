require 'test_helper'

class MonikerTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Moniker.new.valid?
  end
end

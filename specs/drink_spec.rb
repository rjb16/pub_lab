require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../drink.rb')

class TestDrink < Minitest::Test

    def setup()
        @drink = Drink.new("Beer", 3.5, 2)
    end

    def test_has_name()
        assert_equal("Beer", @drink.name)
    end

    def test_has_price()
        assert_equal(3.5, @drink.price)
    end

    def test_has_alcohol()
        assert_equal(2, @drink.alcohol_level)
    end


end

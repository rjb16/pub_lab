require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../pub.rb')
require_relative('../drink.rb')

class TestPub < Minitest::Test

    def setup()
        @drink_1 = Drink.new("Beer", 3.5)
        @drink_2 = Drink.new("Whiskey", 5)
        @drink_3 = Drink.new("Wine", 4.25)
        @pub = Pub.new("Teuchtar's Landing", 100, [@drink_1, @drink_2, @drink_3])
    end

    def test_has_name()
        assert_equal("Teuchtar's Landing", @pub.name)
    end

    def test_has_till()
        assert_equal(100, @pub.till)
    end

    def test_has_drinks()
        assert_equal([@drink_1, @drink_2, @drink_3], @pub.drinks)
    end

end

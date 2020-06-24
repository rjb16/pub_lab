require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../customer.rb')
require_relative('../pub.rb')
require_relative('../drink.rb')

class TestCustomer < Minitest::Test

    def setup()
        @customer = Customer.new("Tomek", 20, 27)
        @drink = Drink.new("coke", 1)
        @pub = Pub.new("The Roseleaf", 100, [@drink])
    end

    def test_has_name()
        assert_equal("Tomek", @customer.name)
    end

    def test_has_wallet()
        assert_equal(20, @customer.wallet)
    end

    def test_has_age()
        assert_equal(27, @customer.age)
    end

    def test_buy_drink
        @customer.buy_drink(@drink, @pub)
        assert_equal(19, @customer.wallet)
        assert_equal(101, @pub.till)
    end

end

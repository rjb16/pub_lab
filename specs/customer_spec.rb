require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../customer.rb')
require_relative('../pub.rb')
require_relative('../drink.rb')

class TestCustomer < Minitest::Test

    def setup()
        @customer = Customer.new("Tomek", 20, 27)
        @customer_1 = Customer.new("John", 20, 25)
        @customer_2 = Customer.new("Michael", 30 , 15)
        @drink = Drink.new("coke", 1, 5)
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

    def test_has_drunkenness()
        assert_equal(0, @customer.drunkenness)
    end

    def test_customer_over_18__true()
        assert_equal(true, @customer_1.customer_over_18)
    end

    def test_customer_over_18__false()
        assert_equal(false, @customer_2.customer_over_18)
    end

    def test_buy_drink
        @customer.buy_drink(@drink, @pub)
        assert_equal(19, @customer.wallet)
        assert_equal(101, @pub.till)
        assert_equal(5, @customer.drunkenness)
    end

end

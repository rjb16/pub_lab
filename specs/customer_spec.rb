require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../customer.rb')

class TestCustomer < Minitest::Test

    def setup()
        @customer = Customer.new("Tomek", 20)
    end

    def test_has_name()
        assert_equal("Tomek", @customer.name)
    end

    def test_has_wallet()
        assert_equal(20, @customer.wallet)
    end

end
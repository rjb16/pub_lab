class Customer

    attr_reader(:name, :wallet, :age)

    def initialize(name, wallet, age)
        @name = name
        @wallet = wallet
        @age = age
    end

    def customer_over_18()
        return @age >= 18
    end

    def buy_drink(drink, pub)
        # get drink price
        price = drink.price
        # check if customer wallet >= drink price
        if @wallet >= price && customer_over_18
            # customer wallet reduced by drink price
            @wallet -= price
            # pub till increase by drink price
            pub.till += price
        end
    end

end 

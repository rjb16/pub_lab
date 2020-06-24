class Customer

    attr_reader(:name, :wallet)

    def initialize(name, wallet)
        @name = name
        @wallet = wallet
    end

    def buy_drink(drink, pub)
        # get drink price
        price = drink.price
        # check if customer wallet >= drink price
        if @wallet >= price
            # customer wallet reduced by drink price
            @wallet -= price
            # pub till increase by drink price
            pub.till += price
        end
    end

end

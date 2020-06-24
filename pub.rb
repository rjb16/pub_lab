class Pub
    
    attr_reader(:name, :till, :drinks)
    attr_writer(:till)

    def initialize(name, till, drinks)
        @name = name
        @till = till
        @drinks = drinks
    end

end


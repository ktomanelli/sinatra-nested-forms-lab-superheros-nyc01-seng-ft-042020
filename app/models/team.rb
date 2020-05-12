class Team
    attr_reader :name,:motto
    def initialize(args)
        @name = args[:name]
        @motto = args[:motto]
    end
end
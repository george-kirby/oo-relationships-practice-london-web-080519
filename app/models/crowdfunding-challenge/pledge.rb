class Pledge

    @@all = []

    attr_reader :amount, :user, :project

    def initialize(amount: , user: , project: )
        @amount = amount
        @user = user
        @project = project
        @@all << self
    end

    def self.all
        @@all
    end

    def user
        @user
    end

    def project
        @project
    end

    def amount
        @amount
    end

end
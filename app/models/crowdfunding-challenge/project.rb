class Project

    @@all = []

    attr_reader :creator, :title, :pledge_goal_amount

    def initialize(creator: , title: , pledge_goal_amount: )
        @creator = creator
        @title = title
        @pledge_goal_amount = pledge_goal_amount
        @@all << self
    end

    def self.all
        @@all
    end

    def pledges
        Pledge.all.select{|pledge| pledge.project == self}
    end

    def number_of_pledges
        self.pledges.count
    end

    def pledge_total
        self.pledges.sum{|pledge| pledge.amount}
    end

    def backers
        self.pledges.map{|pledge| pledge.user}.uniq
    end

    def backer_count
        self.backers.count
    end

    def self.no_pledges
        self.all.select{|project| project.number_of_pledges == 0}
    end

    def self.above_goal
        self.all.select{|project| project.pledge_total >= project.pledge_goal_amount}
    end

    def self.most_backers
        self.all.max_by{|project| project.backer_count}
    end
end
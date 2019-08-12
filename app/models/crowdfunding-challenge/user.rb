class User

    @@all = []

    attr_reader :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def pledges
        Pledge.all.select{|pledge| pledge.user == self}
    end

    def pledges_count
        pledges.count
    end

    def highest_pledge
        pledges.max_by{|pledge| pledge.amount}
    end

    def highest_pledge_amount
        highest_pledge.amount
    end

    def projects_backed
        pledges.map{|pledge| pledge.project}
    end

    def projects_backed_count
        projects_backed.count
    end

    def created_projects
        Project.all.select{|project| project.creator == self}
    end

    def created_projects_count
        self.created_projects.count
    end

    def self.highest_pledge
        self.all.max_by{|user| user.projects_backed_count > 0 ? user.highest_pledge_amount : 0}
    end 

    def self.multi_pledger
        self.all.select{|user| user.projects_backed_count > 0}
    end

    def self.project_creator
        self.all.select{|user| user.created_projects_count > 0}
    end
end
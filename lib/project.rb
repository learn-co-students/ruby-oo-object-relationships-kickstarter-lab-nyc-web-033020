class Project

    attr_reader :title

    @@all = []

    def initialize(title)
        @title = title
        Project.all << self
    end

    def self.all
        @@all
    end

    def backers
        ProjectBacker.all.select do |project|
            project.backer == self
        end
    end

    def add_backer(backer)
        # ProjectBacker.map do |project|
        #     project.backer == backer
        # end
        ProjectBacker.new(self, backer)
    end


end
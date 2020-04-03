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

    def project_backers
        ProjectBacker.all.select do |project|
            project.project == self
        end
    end

    def backers
        project_backers.map do |project|
            project.backer
        end
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

end
class ProjectBacker

    attr_reader :project, :backer

    @@all = []

    def initialize(project, backer)
        @project = project
        @backer = backer
        ProjectBacker.all << self
    end

    def self.all
        @@all
    end

    # def projects
    #     Project.all
    # end

    # def backers
    #     Backer.all
    # end

end
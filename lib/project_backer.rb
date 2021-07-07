class ProjectBacker

    attr_reader :backer, :project

    @@all = []

    def initialize(project, backer)
        @project = project
        @backer = backer
        ProjectBacker.all << self
    end

    def self.all
        @@all
    end
    
end

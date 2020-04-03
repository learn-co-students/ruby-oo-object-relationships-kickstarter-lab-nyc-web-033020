class Backer
    attr_reader :name

    @@backers = []

    def initialize(name)
        @name = name
        @@backers << self
    end

    def projects
        Project.all.select do |project|
            project.backer == self
        end
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def self.backers
        @@backers
    end

    def backed_projects
        pbs = ProjectBacker.all.select do |project|
            project.backer == self
        end.map { |pb| pb.project }
    end
end


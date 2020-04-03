class Backer
    attr_reader :name
    @@all = []

    def initialize (name)
        @name = name
        Backer.all << self
    end

    def self.all
        @@all
    end

    def back_project(project)
        Project.new (title, project_backer, self)
    end

    def backed_projects
        Project.all.select do |projects|
            projects.backer == self
        end
    end

end

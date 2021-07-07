require 'pry'
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
        ProjectBacker.new(project, self)
    end

    def project_backers 
        ProjectBacker.all.select do |projects|
            projects.backer == self
        end
    end

    def backed_projects 
        project_backers.map do |project_backers|
            project_backers.project
        end
    end

end

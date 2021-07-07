class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def pb
        ProjectBacker.all.select {|pb| pb.backer == self}
    end

    def backed_projects
        pb.map {|pb| pb.project}
    end

    def back_project(project) 
        ProjectBacker.new(project, self)
    end

end
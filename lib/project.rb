class Project

    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def pb_projects
        ProjectBacker.all.select do |pb|
            pb.project == self
        end
    end

    def backers
        pb_projects.map do |pb|
            pb.backer
        end
    end

end

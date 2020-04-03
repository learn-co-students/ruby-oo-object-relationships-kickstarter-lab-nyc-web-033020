class Backer
    attr_reader :name
    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        pb = ProjectBacker.all.select {|key| key.backer == self }
        pb.map do |key|
            key.project
        end
    end

end


num = [2,2,2,2,2]

num.map do |key|
    key+1
end

[]

[2,2,2,2,2]

[3,3,3,3,3]

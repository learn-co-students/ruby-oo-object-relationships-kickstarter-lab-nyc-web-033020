class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end







    # def pb
    #     ProjectBacker.all.select do |project| 
    #         project.backer == self
    #     end
    # end

    # def back_project(project)
    #     pb.map do |projects|
    #         projects.backer == self
    #     end
    # end
    
end
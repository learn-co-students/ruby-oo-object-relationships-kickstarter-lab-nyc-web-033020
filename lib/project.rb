class Project
        attr_reader :title
        def initialize(title)
            @title=title
        end
    
        def add_backer(backer)
            ProjectBacker.new(self, backer)
        end
    
        def backers
            pb = ProjectBacker.all.select {|key| key.project == self }
            pb.map do |key|
                key.backer
            end
        end
    end
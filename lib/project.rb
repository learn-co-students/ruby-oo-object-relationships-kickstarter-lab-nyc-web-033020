class Project
    attr_reader :title
    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def pb 
        ProjectBacker.all.select {|pb| pb.project == self}
    end

    def backers
       pp pb.map {|pb| pb.backer }
    end
end
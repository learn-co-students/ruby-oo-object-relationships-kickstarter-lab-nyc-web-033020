class Project
<<<<<<< HEAD
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
=======

  attr_accessor :title

  def initialize(title)
    @title = title
  end


  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end

  def backers
    pb = ProjectBacker.all.select { |key| key.project == self  }
    pb.map do |key|
      key.backer
    end
  end

end
>>>>>>> 7d152ddb94d91e24ebf43a318b400d477c27449c

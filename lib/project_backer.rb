class ProjectBacker
<<<<<<< HEAD
    attr_reader :project, :backer
    @@all = []
    def initialize(project, backer)
        @project = project
        @backer = backer
        ProjectBacker.all << self
    end

    def self.all
        @@all
    end
end
=======
  @@all = []

  attr_reader :project, :backer


  def initialize(project, backer)
    @project = project
    @backer = backer
    ProjectBacker.all << self
  end

  


  def self.all
    @@all
  end



end
>>>>>>> 7d152ddb94d91e24ebf43a318b400d477c27449c

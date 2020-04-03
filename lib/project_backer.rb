class ProjectBacker
  attr_reader :project, :backer
  
  @@all = []
  @@projects = [] # 
  @@backers  = [] #

  def initialize(project, backer)
    @project = project
    @backer = backer
    ProjectBacker.all << self
    ProjectBacker.project << project #
    ProjectBacker.backers << backer #

  end

  def self.all
    @@all
  end

  def self.projects
    @@projects
  end

  def self.backers
    @@backers
  end



end


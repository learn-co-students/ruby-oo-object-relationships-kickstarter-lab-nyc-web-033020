class Project
  attr_reader :title
  #@@all = [] #
  def initialize(title)
    @title = title
  
  end

  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end


end

def backers
  projects = ProjectBacker.all.select do |pb|
    pb.project == self
  end
  my_backers = projects.map { |ele| ele.backer }
  backer_names = my_backers.map { |ele| ele.name }
end

#Project.new("Tower")
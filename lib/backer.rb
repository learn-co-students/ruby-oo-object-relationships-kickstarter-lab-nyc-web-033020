class Backer
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def back_project(project)
    ProjectBacker.new(project, self)
  end

  def backed_projects
    ProjectBacker.all.select do |pb|
      pb.project == self
    end
  end
 
  # def backed_projects
  #   projects = ProjectBacker.all.select do |pb|
  #     pb.backer == self
  #   end
  #   projects.project
  # end


  # def projects
  #   backed_projects.project
  # end

end

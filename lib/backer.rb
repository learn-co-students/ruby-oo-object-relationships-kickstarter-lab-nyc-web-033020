require 'pry'
class Backer
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def back_project(project)
   ProjectBacker.new(project,self)
  end

  def backed_projects
    backed_project = ProjectBacker.all.select do |project|
    project.backer == self  
   end
  backed_project.map do |project|
    project.project
  end
end


end  

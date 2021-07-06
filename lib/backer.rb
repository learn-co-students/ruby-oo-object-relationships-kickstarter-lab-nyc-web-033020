require 'pry'

class Backer
  attr_reader :name

  def initialize (name)
      @name = name
  end

  def back_project(project)
      ProjectBacker.new(project, self)
  end

  def backed_projects
    projects_arr = ProjectBacker.all.select { |projects| projects.backer == self }

    projects_arr.map do |backed_project|
      backed_project.project
    end

    # projects_arr = []
    # ProjectBacker.all.each do |project|
    #   if project.backer == self
    #     projects_arr << ProjectBacker.all.project
    #   end
    #   return projects_arr
    # end
  end


end


# backer                project_backer              project
#name                   backer - project            title

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

  end

end

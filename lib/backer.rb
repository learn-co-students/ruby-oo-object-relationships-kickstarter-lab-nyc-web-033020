class Backer
  attr_reader :name
  def initialize (name)
      @name = name
  end
  def backer_project(project)
      ProjectBacker.project
  end
end
# backer                project_backer              project
#name                   backer - project            title

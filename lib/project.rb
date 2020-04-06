class Project
  attr_reader :title

  def initialize(title)
    @title = title
  end

  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end

  def backers
    backers_arr = ProjectBacker.all.select { |backer| backer.project == self }

    backers_arr.map do |project_backers|
      project_backers.backer
    end

  end

end

class Project
  attr_reader :title
  @@all = [] #
  def initialize(title)
    @title = title
    Project.all << self #
  end

  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end

  def self.all #
    @@all
  end

end

Project.new("Tower")
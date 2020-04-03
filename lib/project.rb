class Project
  attr_accessor :title

  def initialize(title)
    @title = title
  end

  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end

  def associated_backers
    ProjectBacker.all.select do |backer|
      backer.project == self
    end
  end

  def backers
   associated_backers.map do |backer|
    backer.backer
   end
  end
end
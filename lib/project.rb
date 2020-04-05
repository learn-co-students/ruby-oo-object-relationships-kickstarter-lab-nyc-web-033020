class Project
		attr_reader :title
		@@all = [ ]
		def initialize(name)
				@title = name
				Project.all << self 
		end
		def self.all
			@@all
		end 
		def add_backer(backer)
			ProjectBacker.new(self, backer)
		end 
		def backers 
			ProjectBacker.all.select do |proj|
				proj.project == self
			end.map{ |proj| proj.backer }
		end 


end

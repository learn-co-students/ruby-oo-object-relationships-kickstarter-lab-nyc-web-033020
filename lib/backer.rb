class Backer
	@@all = [ ]
		attr_reader :name
		def initialize(name)
				@name = name
				Backer.all << self 
		end
		def self.allge
			@@all
		end 
		def back_project (project)
			ProjectBacker.new(project,self)
		end 

	end


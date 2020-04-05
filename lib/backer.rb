class Backer
	@@all = [ ]
		attr_reader :name
		def initialize(name)
				@name = name
				Backer.all << self 
		end
		def self.all
			@@all
		end 
		def back_project (project)
			ProjectBacker.new(project,self)
		end 
		def backed_projects 
			ProjectBacker.all.select do |proj|
				proj.backer == self 
			end.map{|proj| proj.project }
		end 

	end


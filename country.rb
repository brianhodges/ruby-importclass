class Country

	attr_accessor :name, :population, :states, :best_city
	
	def initialize(arg1, arg2, arg3, arg4)
		@name = arg1
		@population = arg2
		@states = arg3
		@best_city = arg4
	end
	
	def fav_cnt
		self.states.size
	end
end


class City

	attr_accessor :name, :population
	
	def initialize(arg1, arg2)
		@name = arg1
		@population = arg2
	end
end

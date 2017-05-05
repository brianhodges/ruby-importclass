load 'country.rb'

a1 = City.new('Los Angeles', '4 million')
b1 = ['New York', 'Virginia', 'California', 'Florida', 'Hawaii']
c1 = Country.new('USA', '350 millioin', b1, a1)

a2 = City.new('Cancun', '700,000')
b2 = ['Durango', 'Puebla', 'Guerrero', 'Quintana Roo']
c2 = Country.new('Mexico', '127 million', b2, a2)

countries = [c1, c2]

File.open('log.txt', 'w') do |file| 
	file.puts
	countries.each do |c|
		file.puts 'Name: ' + c.name
		file.puts 'Population: ' + c.population
		file.puts 'Best States: ' + c.states.join(', ')
		file.puts "Top State Count: #{c.fav_cnt}"
		file.puts 'Best City: ' + c.best_city.name
		file.puts "#{c.best_city.name} Population: " + c.best_city.population
		file.puts
	end
end

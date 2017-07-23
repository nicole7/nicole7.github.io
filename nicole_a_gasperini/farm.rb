class Farm
attr_accessor :name, :acres, :value_array


	def initialize(name, acres)
		@name = name
		@acres = acres
		@animals = {}
		@animal_list
		@value_array
	end

	def barn_door
		open_door
		
		close_door

	end

	def open_door
		"*Barn door opened*"
	end

	def close_door
		"*Barn door closed*"
	end
	#I was confused on how to use the open_door and close_methods for the barn
	#door. since everything needed to be taken care of here I didnt see how to incorporate barn_door method
	#I also got confused on how to pass the hash of different named animals here - pass into from outside? Made
	#new variables instead
	def new_animal(animal, food)
		food_limit = 45

		if food > food_limit
			p "Farm does not produce enough for this animal, they need to find anoter home :("
		else
			p "Animal accepted!"
			p open_door
			@animals[animal] = food
			p @animals
			p close_door
		end
	end

	def display_farm_animals
		@animal_list = {
			"Cow" => 50,
			"Pig" => 40,
			"Sheep"=> 20,
		}

		@animal_list.each do |key, value|
			p "The #{key} eats #{value} lbs of feed"
		end
		@animal_list
	end

	def total_food_needed
		@value_array = []
		#@animal_list.values.inject(0) {|initial,sym| initial + sym}
		@animal_list.each do |key, value|
			
			@value_array << value

		end
		@value_array.inject(0) {|initial, sym| initial + sym}
	end

end

farm1 = Farm.new("McDonald", 200)
farm2 = Farm.new("Farmtown", 100)



p farm1.name = "Old McDonald"
p farm2.acres
farm1.barn_door
farm1.new_animal("Horse", 45)
farm1.display_farm_animals
farm1.total_food_needed

p farm1.total_food_needed

animal_list = farm1.display_farm_animals

animal_list.each do |key, value|
	farm1.new_animal(key, value)
end





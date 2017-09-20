# Get input from the user:  the cheer
def call_out_cheer
	display("Call out cheer!")
	gets.chomp
end

# Determine the mascot's response based on the argument
# passed to the method
def mascot_sign_for(input)
	if input == "RED HOT"
		"H-O-T!"
	elsif input == "DO IT AGAIN"
		 "Go, Fight, Win"
	elsif input == "2 BITS"
		 "Holler!"
	elsif input == "STOMP YOUR FEET"
		 "STOMP!"	
	else 
		  "Go Team!"
	end
end

# Print the argument passed to the method
def display(response)
	puts response
end

# This method will control the flow of the application,
# making use of the other three methods.
def coordinate_cheers
	counter = 0

	loop do 
		input = call_out_cheer

		if input.empty?
			counter += 1
		else
			counter = 0
		end
		break if input == "GAME OVER" || counter == 2
		display(mascot_sign_for(input))
	end
	
end


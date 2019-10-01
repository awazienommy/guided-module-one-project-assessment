require_relative '../config/environment'

interface = Interface.new 
#no argument needed to initialize the interface

# interface.welcome  taken out at some point in the lecture

answer = interface..welcome() #this gives what the user has chosen as the answer


interface.prompt.select("Choose your destiny?", %w(Scorpion Knao Jax))
#at this point, binding.pry will never be hit until the prompt is put in


binding.pry
puts "hello world"

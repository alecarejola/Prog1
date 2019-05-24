#Class Declaration
class Animal
  def initialize(n, sp, w)
    @name = n
    @species = sp
    @weight = w
  end
  def cute_roar
    @croar = "ruuur"
  end
  def fierce_roar
    @froar = "ROOOOOOAAAAWWWWWR"
  end
  def setAnimalTraits(n, sp, w)
    @name = n
    @species = sp
    @weight = w
  end
  def getAnimalName
    return @name
  end
  def getSpecies
    return @species
  end
  def getWeight
    return @weight
  end
end
class Reptile < Animal
  def initialize(t = true, n, sp, w)
    super(n, sp, w)
    @has_tail = t
  end
  def setTail(t)
    @has_tail = t
  end
  def getTail
    return @has_tail
  end
end
#Method Declaration
def reptileSelection
  print "Enter your reptile's name: "
  name = gets.chomp
  print "Enter your desired species(Crocodilia, Sphenodontia, Squamata, or Testudines)Input by its corresponding number(1-4): "
  choice = gets.chomp.to_i
  if choice == 1 then
    species = "Crocodilia"
  elsif choice == 2 then
    species = "Sphenodontia"
  elsif choice == 3 then
    species = "Squamata"
  elsif choice == 4 then
    species = "Testudines"
  end
  print "Enter your desired weight(1-500kg): "
  weight = gets.chomp.to_i
  print "Do you want a tail for your reptile?(Y/N): "
  tail = gets.chomp
  return name, species, weight, tail
end
#Driver Implementation
choice = 0
myAnimal = nil
name = ""
species = ""
weight = 0
tail = true
animalTrait = []
puts "Welcome to Reptile Selection. Do you want a cute reptile or a fierce animal?(Press 1 for cute, 2 for fierce)"
choice = gets.chomp.to_i
if choice == 1 then
  myAnimal = Reptile.new(tail, name, species, weight)
  animalTrait = reptileSelection
  myAnimal.setAnimalTraits(animalTrait[0], animalTrait[1], animalTrait[2])
  myAnimal.setTail(animalTrait[3])
  puts "Your reptile's name is #{myAnimal.getAnimalName}. It is #{myAnimal.getSpecies} and it weighs #{myAnimal.getWeight} kilograms. It will roar. #{myAnimal.cute_roar}"
  if(myAnimal.getTail == "Y") then
    puts "#{myAnimal.getAnimalName}'s tail is wagging."
end
elsif choice == 2 then
  myAnimal = Reptile.new(tail, name, species, weight)
  animalTrait = reptileSelection
  myAnimal.setAnimalTraits(animalTrait[0], animalTrait[1], animalTrait[2])
  myAnimal.setTail(animalTrait[3])
  puts "Your reptile's name is #{myAnimal.getAnimalName}. It is #{myAnimal.getSpecies} and it weighs #{myAnimal.getWeight} kilograms. It will roar. #{myAnimal.fierce_roar}"
  if(myAnimal.getTail == "Y") then
    puts "#{myAnimal.getAnimalName}'s tail is wagging."
  end
end

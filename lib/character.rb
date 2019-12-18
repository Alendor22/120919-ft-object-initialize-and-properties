require 'pry'

class Character
  attr_accessor :name, :level, :klass, :score, :strength, :lives, :speed, :health

  def initialize(attributes)
    # attributes.each do |key, value|
    #   self.send("#{key}=", value)
    # end

    self.name = attributes[:name]
    self.level = attributes[:level]
    self.klass = attributes[:klass]
    self.score = attributes[:score]
    self.strength = attributes[:strength]
    self.lives = attributes[:lives]
    self.speed = attributes[:speed]
    self.health = attributes[:health]
  end

  def say_description
    puts "My name is #{self.name}"
    puts "My level is #{self.level}"
    puts "My klass is #{self.klass}"
    puts "My score is #{self.score}"
    puts "My strength is #{self.strength}"
    puts "My lives is #{self.lives}"
    puts "My speed is #{self.speed}"
    puts "My health is #{self.health}"
  end

  # attr_writer :name
  # attr_reader :name

  # def name=(name)
  #   @name = name + "!"
  # end

  # def name
  #   @name
  # end

end

details = {
  name: "Biff",
  level: 5,
  klass: "Knight",
  score: 2400,
  strength: 17,
  lives: 3,
  speed: 6,
  health: 100
}

# biff = Character.new("Biff", 5, "Knight", 2400, 17, 3, 6, 100)
biff = Character.new(details)

biff.say_description
# What properties will our character have?

=begin
  name
  level
  klass
  score
  strength
  lives
  speed
  health
=end
require 'pry'
# In Ruby, the `self` keyword is a reference to the current context object
# In Ruby, inside a method, the `self` keyword is a reference to the receiving object
# In Ruby, inside a method, the `self` keyword is a reference to the object the method was called on
# In Ruby, inside an INSTANCE method, the `self` keyword is a reference to the instance object the method was called on
# In Ruby, inside an CLASS method, the `self` keyword is a reference to the class the method was called on
class Character
  attr_accessor :name, :level, :klass, :score, :strength, :lives, :speed, :health
  @@all = []

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

  # instantiate PLUS save
  def self.create(attributes)
    self.new(attributes).tap { |character| character.save }
  end

  # instance method that "persists" the object
  def save
    @@all << self # what is self? the new character instance that was just created
  end

  # this is a class method
  # this is a class-level reader method for the @@all class variable
  def self.all
    @@all
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

#
# details = {
#   name: "Biff",
#   level: 5,
#   klass: "Knight",
#   score: 2400,
#   strength: 17,
#   lives: 3,
#   speed: 6,
#   health: 100
# }
#
# # biff = Character.new("Biff", 5, "Knight", 2400, 17, 3, 6, 100)
# biff = Character.create(details)
#
# biff.say_description
# # What properties will our character have?
#
# =begin
#   name
#   level
#   klass
#   score
#   strength
#   lives
#   speed
#   health
# =end

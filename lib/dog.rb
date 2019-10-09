# Add your code here
class Dog
  @@all = []
  
  attr_reader :name
  
  def initialize(name)
    @name = name
    @@all.push(self)
    save
  end
  def self.all
     @@all
  end
  
  def self.clear_all
    @@all.clear
  end
  
  def self.print_all
    @@all.each {|dog_name|  puts dog_name.name}
  end
  
  def save
    @@all << self
  end
end



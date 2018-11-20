class Vampire
  @@coven =[]
  def initialize(name, age)
  @name = name
  @age = age
  @in_coffin = true
  @drank_blood_today= false
  end

  def self.create(name, age)
    new_vampire = Vampire.new(name, age)
    @@coven << new_vampire
    return new_vampire
  end
  #Writer
  def drink_blood
    @drank_blood_today = true
  end
  #Reader
  def drank_blood
    return @drank_blood_today
  end

  def self.sunrise
    @@coven.each do |vampire|
    if vampire.in_coffin || vampire.drank_blood == false
      @@coven.delete(vampire)
    end
  end

  end
  def self.sunset
    @drank_blood_today && @in_coffin = false

  end
  def self.in_coven

    return @@coven
  end
  def go_home
    @in_coffin = true
  end
  #Reader
  def in_coffin
    return @in_coffin
  end
end
# puts Vampire.in_coven
maryna = Vampire.create("Mar", 49499449)
vic = Vampire.create("Vic", 384834)
gab = Vampire.create("gab", 233244)
puts Vampire.in_coven
gab.go_home
gab.drink_blood
puts Vampire.in_coven






# Vampire.sunset
# Vampire.sunrise
# puts Vampire.in_coven

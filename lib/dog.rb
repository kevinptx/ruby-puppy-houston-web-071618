class Dog
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    #why won't it accept the long-hand do...end style?
    @@all.map do |dog|
      puts dog.name
    end
    # @@all.map { |dog| dog.name }
  end

  def self.clear_all
    @@all.clear
  end
end

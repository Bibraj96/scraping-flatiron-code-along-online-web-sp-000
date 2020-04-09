class Course
  attr_accessor :title, :schedule, :description

  @@all = []

  def iniitalize
    @@all << self
  end

  def self.all
    @@all
  end
end

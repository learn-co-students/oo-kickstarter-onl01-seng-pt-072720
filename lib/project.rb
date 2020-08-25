class Project

  attr_reader :title
  attr_accessor :backers
  @@all = []

  def initialize(title)
    @title = title
    @@all << self
    @backers = []
  end

  def add_backer(backer)
      @backers << backer
      backer.projects << self
  end

end

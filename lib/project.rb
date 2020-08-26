# class Project 
  
#   attr_reader :backers
  
#   def initialize 
#     @backers = []
#     @@all << self 
#   end
  
#   def add_backer()
#     Backer 
#   end 
  
# end
  
class Project
  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end
  
  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self
  end
end
  
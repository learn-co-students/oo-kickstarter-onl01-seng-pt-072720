class Project
  attr_reader :title
  attr_accessor :backers, :backer
  
  def initialize(title)
    @title= title
    @backers = []
  end
  
  def add_backer(backer)
    @backers << backer
    #also adds project to the backers backed_projects array
    backer.back_project(self)
  end
end
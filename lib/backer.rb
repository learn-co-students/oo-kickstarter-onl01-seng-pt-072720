# class Backer
  
#   attr_reader :projects 
  
#   def initialize
#     @backed_projects = []
#     @@all << self 
#   end
  
#   def backed_project()
#     Project
#   end 
  
# end

class Backer

  attr_accessor :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects << project
    project.backers << self
  end
end
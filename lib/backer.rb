class Backer

  attr_reader :name
  attr_accessor :projects
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @projects = []
  end

  def back_project(project)
    @projects << project
    project.backers << self
  end

  def backed_projects
    @projects
  end

end

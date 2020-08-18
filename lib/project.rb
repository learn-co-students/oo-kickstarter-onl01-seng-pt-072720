class Project
    attr_accessor :backers, :backed_projects
    attr_reader :title

    def initialize(title) 
        @backers = []
        @title = title
    end 

    def add_backer(backer)
        Backer.new(backer)
        @backers << backer
        backer.backed_projects << self
    end 
end
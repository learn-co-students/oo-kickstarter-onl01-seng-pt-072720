# When a `Project` instance is initialized, it should be initialized with a
#   `@backers` variable set to an empty array. Instances of the `Project` class
#   should have an `attr_reader` for backers. This way, a project can report on
#   who its backers are.
class Project

    attr_reader :title, :backers

    def initialize(title)
        @title = title
        @backers = []
    end
    # Similarly, write a method on the Project class called `add_backer()` that
    # takes in a Backer instance and adds the backer to its `@backers` attribute.
    def add_backer(backer)
        @backers << backer
        backer.backed_projects << self
    end

end

# When a `Backer` instance is initialized, it should be initialized with a
#   `@backed_projects` variable set to an empty array. Instances of the `Backer`
#   class should have an `attr_reader` for backed projects. This way, a backer can
#   report on the projects they back.

class Backer
    attr_reader :backed_projects, :name
    

    def initialize(name)
        @name = name
        @backed_projects = []
    end
    # Once both classes have their attributes and readers set up, write a method on
    # the Backer class called `back_project()` that takes in a Project instance and
    # adds the project to its `@backed_projects` attribute.

    def back_project(project)
        @backed_projects << project
        project.backers << self
    end
#     Whenever `back_project()` is called to update `@backed_projects`, the project
#   _should alsoupdate its `@backers` list_.
# If by this point, the project knows about a new backer, where does that mean
    # some more magic needs to happen? There's really only one place it can happen.
end

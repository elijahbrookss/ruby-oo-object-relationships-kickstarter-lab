class Project

    attr_reader :title


    def initialize(title)
        @title = title
    end

    def add_backer(backer_instance)
        ProjectBacker.new(self, backer_instance)
    end

    def backers
        correct_project = ProjectBacker.all.select{ |project_backer| project_backer.project == self }
        correct_project.map{ |correct| correct.backer } 
    end


end

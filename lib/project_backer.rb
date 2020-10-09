class ProjectBacker

    @@all = []

    attr_reader :project, :backer


    def initialize(project_instance, backer_instance)
        @project = project_instance
        @backer = backer_instance

        self.class.all << self
    end

    def self.all
        @@all
    end




end

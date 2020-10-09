require 'pry'

class Backer

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project_instance)
        ProjectBacker.new(project_instance, self)
    end

    def backed_projects

        correct_back = ProjectBacker.all.select{ |project_backer| project_backer.backer == self }
        correct_back.map{ |correct| correct.project } 
    end 


end

class School
    attr_accessor :roster, :name, :grade
    attr_reader :school

def initialize(school)
    @school = school
    @roster = {}
    end

def add_student(name, grade) 
    if !@roster[grade]
        @roster[grade] = [name]
    elsif @roster[grade] << name
    end
end

def grade(grade)
    @roster.select do |key, value|
        if key == grade
           return value
end
end
end

def sort
    @roster.each_value(&:sort!) 
end
end
class Course
    attr_reader     :name,
                    :capacity,
                    :students

    attr_accessor :students

    def initialize(name, capacity)
        @name = name
        @capacity = capacity
        @students = []
        @full = false
    end

    def full?
        if @students.length == @capacity
            @full = true
        else
            false
        end
    end
    
    def enroll(student)
        @students << student
        return @students
    end
    
    
end

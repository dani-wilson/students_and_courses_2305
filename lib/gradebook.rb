class Gradebook
    attr_reader :instructor,
                :courses

    def initialize(instructor)
        @instructor = instructor
        @courses = []
    end

    def add_course(course)
        @courses << course
    end

    def list_all_students
        @courses.each do |course|
        all_students = {course => [@students], course => [@students]}
        return all_students
        end
    end

    # def students_below(threshold)
    #     flunking_out = []
    #     @students.each do |student|
    #     if @scores.student < threshold
    #         flunking_out << student
    #     end
    #     return flunking_out
    #     end
    # end


end

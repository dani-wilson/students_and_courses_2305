class Student
    attr_reader     :name,
                    :age,
                    :scores

    attr_accessor   :grade

    def initialize(student_information)
        @name = student_information[:name]
        @age = student_information[:age]
        @scores = []
        @grade = grade
    end

    def log_score(score)
        @scores << score
    end

    def grade
        sum = 0
        @scores.each do |score|
            sum += score
        end
        grade = sum.to_f / @scores.length
        return grade
    end


end

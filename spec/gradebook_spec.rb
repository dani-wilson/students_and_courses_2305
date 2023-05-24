require './lib/student'
require './lib/course'
require './lib/gradebook'

RSpec.describe Gradebook do
    gradebook = Gradebook.new("Professor Flemming")

    it 'exists' do
        expect(gradebook).to be_a(Gradebook)
    end

    it 'has an attribute' do
        expect(gradebook.instructor).to eq("Professor Flemming")
    end

    it 'has courses' do
        expect(gradebook.courses).to eq([])
    end

    it 'can add courses' do
        course1 = Course.new("Biology", 5)
        course2 = Course.new("Calculus", 2)

        gradebook.add_course(course1)
        gradebook.add_course(course2)

        expect(gradebook.courses).to eq([course1, course2])
    end

    it 'should list all students' do
        course1 = Course.new("Biology", 5)
        course2 = Course.new("Calculus", 2)

        gradebook.add_course(course1)
        gradebook.add_course(course2)

        student1 = Student.new({name: "Morgan", age: 21})
        student2 = Student.new({name: "Jordan", age: 29})
        student3 = Student.new({name: "Toto", age: 27})
        student4 = Student.new({name: "Beans", age: 19})

        course1.enroll(student1)
        course1.enroll(student3)
        course2.enroll(student2)
        course2.enroll(student4)
        
        expect(gradebook.list_all_students).to eq({course1 => [student1, student3], course2 => [student2, student4]})
    end

    # it 'keeps track of underachievers' do
    #     student1 = Student.new({name: "Morgan", age: 21})
    #     student2 = Student.new({name: "Jordan", age: 29})
    #     student3 = Student.new({name: "Toto", age: 27})
    #     student4 = Student.new({name: "Beans", age: 19})
        
    #     student1.log_score(100)
    #     student1.log_score(95)
    #     student2.log_score(70)
    #     student2.log_score(85)
    #     student3.log_score(0)
    #     student3.log_score(50)
    #     student4.log_score(75)
    #     student4.log_score(88)

    #     expect(gradebook.students_below(50)).to eq([student3])
    # end

end
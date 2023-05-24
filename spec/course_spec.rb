require 'rspec'
require './lib/course'
require './lib/student'

RSpec.describe Course do 
    course = Course.new("Calculus", 2)

    it 'exists' do
        expect(course).to be_a(Course)
    end

    it 'has attributes' do
        expect(course.name).to eq("Calculus")
        expect(course.capacity).to eq(2)
    end

    it 'has students' do
        expect(course.students).to eq([])
    end

    it 'is full or not' do
        expect(course.full?).to eq(false)
    end
    
    it 'should enroll new students' do
        student1 = Student.new({name: "Morgan", age: 21})
        student2 = Student.new({name: "Jordan", age: 29})
        
        course.enroll(student1)
        course.enroll(student2)
        
        expect(course.students).to eq([student1, student2])
        expect(course.full?).to eq(true)
    end

end
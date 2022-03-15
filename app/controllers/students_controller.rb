class StudentsController < ApplicationController
    def index
    students=Student.all
    render json: students
    end
    def grades
    grades=Student.all.order("grade DESC")
    render json: grades
    end
    def highest_grade
    high=Student.all.order("grade DESC").limit(1)
    render json: high
    end
end

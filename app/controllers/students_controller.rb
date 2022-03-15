class StudentsController < ApplicationController
    def index
    students=Student.all
    render json: students
    end
    def grades
    grades=Student.all.order("grade DESC")
    render json: grades
    end
end

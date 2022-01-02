class Api::V1::StudentsController < ApplicationController
  def index
    students = Student.all
    render json: StudentSerializer.all_students(students)
  end
end

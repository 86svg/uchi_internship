class StudentsController < ApplicationController
    # POST /students
  def create
    student = Student.new(student_params)

    if student.save
      student_token = student.generate_token
      response.headers['X-AUTH-TOKEN'] = student_token

      render json: student, status: :created, location: student
    else
      render json: student.errors, status: :method_not_allowed
    end
  end

  # DELETE /students/:id
  def destroy
    student = Student.find(params[:id])

    unless request.headers['X-AUTH-TOKEN'] == student.token
      render json: {}, status: :unauthorized
      return
    end

    student.destroy
    render json: {}, status: :ok
  rescue ActiveRecord::RecordNotFound
    render json: {}, status: :not_found
  end

  # GET /schools/:school_id/classes/:class_group_id/students
  def index
    school = School.find(params[:school_id])
    class_book = school.class_books.find(params[:class_book_id])
    students = class_book.students

    render json: students, status: :ok
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name, :surname, :class_book_id)
  end
end

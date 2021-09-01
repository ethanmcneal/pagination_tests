class StudentsController < ApplicationController
    before_action :set_params, only: :index
    before_action :set_student, only: [:show, :destroy]

    def index
        students = Student.filter(@filters).page(@page).per(@per_page)
        render json: students
    end

    def show
        render json: @student
    end

    def create
        student = Student.new(student_params)
        if student.save
            render json: student
        else
            render json: {error: 422}
        end
    end

    def destroy
        render json: @student.destroy
    end

    def update
        if @student.update(student_params)
            render json: @student
        else
            render json: {errors: @student.errors}
        end
    end

private
    def set_params
        @filters = params[:filter]
        @page = params[:page] || 1
        @per_page = params[:per]
    end

    def set_student
        @student = Student.find(params[:id])
    end

    def student_params
        params.permit(:name, :age)
    end
end

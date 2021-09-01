class StudentsController < ApplicationController
    before_action :set_params, only: :index
    before_action :set_student, only: :show

    def index
        students = Student.filter(@filters).page(@page).per(@per_page)
        render json: students
    end

    def show
        render json: @student
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
    
end

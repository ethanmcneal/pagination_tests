class StudentsController < ApplicationController
    before_action :set_params, only: :index

    def index
        students = Student.filter(@filters).page(@page).per(@per_page)
        render json: students
    end

private
    def set_params
        @filters = params[:filter]
        @page = params[:page] || 1
        @per_page = params[:per]
    end
    
end

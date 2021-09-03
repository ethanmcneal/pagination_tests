class LecturesController < ApplicationController

    before_action set_params, only: :index
    def index
        lectures = Lecture.filter(@filters).page(@page).per(@per_page)
        render json: lectures
    end

    private
    
    def set_params
        @page = params[:page] || 1
        @per_page = params[:per_page] || 5 
    end
end

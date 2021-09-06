class LecturesController < ApplicationController

    before_action :set_params, only: :index
    before_action :set_lecture, only: [:show, :update, :destroy]
    def index
        lectures = Lecture.filter(@filters).page(@page).per(@per_page)
        render json: lectures
    end

    def show
        render json: @lecture
    end

    def destroy
        render json: @lecture.destory
    end

    private
    
    def set_params
        @page = params[:page] || 1
        @per_page = params[:per_page] || 5
        @filters = params[:filter]
    end

    def set_lecture
        @lecture = Lecture.find(params[:id])
    end
end

class GolfCoursesController < ApplicationController

    def index
        @course = GolfCourse.all
    end

    def show
        
    end

    def new
       
    end

    def create

    end

    def edit

    end

    def update

    end

    def destroy

    end

    private

    def find_course
        @course = GolfCourse.find_by_id(params[:id])
    end

    

end

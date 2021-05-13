class GolfCoursesController < ApplicationController

    def index
        @course = GolfCourse.all
    end

    def show
        find_course
            #byebug
               
    end

    

    private

    def find_course
        @course = GolfCourse.find_by_id(params[:id])
    end

    

end

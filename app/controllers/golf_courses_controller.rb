class GolfCoursesController < ApplicationController

    def index
        @course = GolfCourse.all
    end

    def show
        if find_course.nil?
            redirect_to golf_courses_path
        else
            redirect_to golf_course_path
        end
    end

    

    private

    def find_course
        @course = GolfCourse.find_by_id(params[:id])
    end

    

end

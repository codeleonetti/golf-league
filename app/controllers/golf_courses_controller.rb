class GolfCoursesController < ApplicationController

    def index
        @course = GolfCourse.all
    end

    def show
        find_course
        @user = User.all
        @teetimes = Teetime.all
        @upcoming_teetimes = Teetime.upcoming_teetimes(Time.now.midnight)
    
    end

    


    

    private

    def find_course
        @course = GolfCourse.find_by_id(params[:id])
    end

    
end


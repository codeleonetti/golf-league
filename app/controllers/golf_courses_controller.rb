class GolfCoursesController < ApplicationController

    def index
        @course = GolfCourse.all
    end

    def show
        find_course
         @user = current_user
               
    end

    

    # def update
    #     find_course
    #     binding.pry
    #      @course = scorecard.update(scorecard_params)
    #      binding.pry
    #     if @course.save
    #         redirect_to golf_course_path(@course)
    #     else
    #         flash[:error] = " Time not available please select another time"
    #         redirect_to new_golf_course_scorecard_path(@course)
    #     end

    # end

    

    private

    def find_course
        @course = GolfCourse.find_by_id(params[:id])
    end

    # def course_params
    #     params.require(:course).permit()
    #end

end


class ScorecardController < ApplicationController


    def index

    end
    def show
        @user = current_user
        @course = GolfCourse.find_by_id(params[:golf_course_id])
    end


    def new
        @course = GolfCourse.find_by_id(params[:golf_course_id])
        @scorecard = @course.current_user.scorecards.build
        scorecard.golfcourse = golf_course_id

    end
    #scorcard is going to need a scorecard and a user id this is all done in the new section 
    def create
        scorecard = ScoreCard.create(scorecard_params)
    end


    private

    def scorecard_params
        params.require(:scorecard).permit(:user_id, :golf_course_id, :scorecard)
    end
end

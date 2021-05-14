class ScorecardController < ApplicationController

    def new
        @scorecard = GolfCourse.ScoreCard.build
        @scorecard
    end

    def show
        @user = current_user
        @course = GolfCourse.find_by_id(params[:golf_course_
        id])
    end

    def create
        scorecard = ScoreCard.create(scorecard_params)
    end


    private

    def scorecard_params
        params.require(:scorecard).permit(:user_id, :golf_course_id, :scorecard)
    end
end

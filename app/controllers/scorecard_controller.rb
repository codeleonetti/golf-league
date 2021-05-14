class ScorecardController < ApplicationController


    def index

     current_user.id

     @scuser = @user.score_cards


    end
    def show
       # binding.pry
        @user = current_user.id
        @course = GolfCourse.find_by_id(params[:golf_course_id])
    end


    def new
       # binding.pry
        @course = GolfCourse.find_by_id(params[:golf_course_id])
        @scorecard = @course.score_cards.build
       # binding.pry
        @scorecard.user_id = current_user.id

    end
    #scorcard is going to need a scorecard and a user id this is all done in the new section 
    
    def create
        binding.pry
        @scorecard = ScoreCard.create(scorecard_params)
        binding.pry
    end


    private

    def scorecard_params
        params.require(:scorecard).permit(:user_id, :golf_course_id, :tee_time)
    end

    
end

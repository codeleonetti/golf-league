class ScoreCardController < ApplicationController


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
       
        @course = GolfCourse.find_by_id(params[:golf_course_id])
        @scorecard = @course.score_cards.build
        @scorecard.user_id = current_user.id

    end
    #scorcard is going to need a scorecard and a user id this is all done in the new section 
    
    def create
        
        @scorecard = ScoreCard.new(scorecard_params)
       

        if @scorecard.save
            redirect_to golf_course_path(@course)
        else
            render " new "
        end
    end

    def update
        if @scorecard.update(scorecard_params)
            @scorecard.update
            redirect_to golf_course_path(@course)
        else
            flash[:error] = " Time not available please select another time"
            redirect_to new_golf_course_scorecard_path(@course)
        end
    end


    private

    def scorecard_params
        params.require(:scorecard).permit(:user_id, :golf_course_id, :tee_time)
    end

    
end

class TeetimesController < ApplicationController

    def index
       if params[:golf_course_id]
        find_courses
        @teetimes = @course.teetimes
       else

       end
    end
    def show
        
        @teetime = Teetime.find_by_id(params[:id])
    end




    def new
        
        @teetime = @course.teetimes.build # this is building the form
        
        
    end

    def create
        binding.pry
        find_courses
        @teetime = @course.teetimes.build(teetime_params)
        @teetime = Teetime.new(teetime_params)
        @teetime.user_id = current_user.id
        binding.pry
        if @teetimes.save
            binding.pry
            redirect_to golf_course_teetime_path
        else
            render :new
        end
    end



    private

    def teetime_params
        params.require(:teetime).permit(:user_id, :golf_course_id, :tee_time)
    end

    def find_courses
        @course = GolfCourse.find_by_id(params[:golf_course_id])
    end

    def set_teetime
        @teetime = Teetime.find_by_id(params[:id])
    end
end

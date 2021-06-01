class GolfCoursesController < ApplicationController

    def index
        @course = GolfCourse.all
        @userprofile = current_user
       
    end

    def search 
        if params[:search].blank?
            redirect_to(golf_courses_path, alert: "Field Empty!")
        else
            course_search = params[:search].downcase.gsub(/\s+/, '')
            @courses = GolfCourse.all.select {|course|
            course.name.downcase.include?(course_search) 
        }
        end
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


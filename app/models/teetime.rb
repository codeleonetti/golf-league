class Teetime < ApplicationRecord
    belongs_to :user
    belongs_to :golf_course

   scope :upcoming_teetimes, ->(time) { where('tee_time > ?', time) }

    # def self.teetimes_scheduled
    #     self.all.select {|teetime| teetime.scheduled }
    # end

end

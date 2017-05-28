class BuddySheet < ApplicationRecord
  belongs_to :user
  has_many :buddy_study_logs
  
  def dayoff_diff
    total_diff = 0
    das = dayoffs
    (start_at..start_at.since(period.days)).each do |day|
      if das.include?(day)
         total_diff += 1
      end
    end
    return total_diff
  end

  def total_period
    total_diff = dayoff_diff
    return (start_at..start_at.since((period + total_diff - 1).days))
  end

  def dayoffs
    DayOff.pluck(:off_plan)
  end

  def create_buddy_study_logs
    total_period.each do |day|
      if dayoffs.include?(day)
        next
      end
      buddy_study_logs.create(schedule_date: day, result_date: day)
    end    
  end

end


class BuddyStudyLogsController < ApplicationController
  def update
    @buddy_study_log = BuddyStudyLog.find(params[:id])
    @buddy_study_log.update(study_log_params)
    redirect_to user_buddy_sheet_path(user_id: params[:user_id], id: params[:buddy_sheet_id])
  end

  # def update_study_result
    
  # end

  # def update_trainer_comment
    
  # end

  private
  def study_log_params
    params.require(:buddy_study_log).permit(:schedule_date, :schedule_time, :schedule_place, :result_date, :result_time, :result_place, :trainer_comment, :schedule_content, :result_content, :thought)
  end
end

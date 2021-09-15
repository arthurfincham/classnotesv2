class NotesController < ApplicationController
  before_action :authenticate_user!

  def index
    @notes = current_user.notes.all
  end

  private

  def note_params
    params.require(:user_id, :note_date).permit(:partners, :pos_description, :neg_description, :created_at, :updated_at)
  end
end

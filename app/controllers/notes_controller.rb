class NotesController < ApplicationController
  before_action :authenticate_user!
  before_action :note_taggers!
  before_action :set_note, only: [:edit, :update]
  
  def index
  end

  def new
    @note = current_user.notes.new
  end

  def create
    @note = current_user.notes.new(note_params)
    if @note.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @note.update(note_params)
      redirect_to root_path
    else
     render 'edit'
    end
  end

  private

  def note_params
    params.require(:note).permit(:partners, :note_date, :user_id, :pos_description, :neg_description, :tag_list, :instructor_list, :note_title_list, :partner_list)
  end

  def note_taggers!
    if params[:tag]
      @notes = current_user.notes.tagged_with(params[:tag]).order(params[:sort])
    elsif params[:instructor]
      @notes = current_user.notes.tagged_with(params[:instructor]).order(params[:sort])
    elsif params[:note_title]
      @notes = current_user.notes.tagged_with(params[:note_title]).order(params[:sort])
    else
      @notes = current_user.notes.order(params[:sort])
    end
  end

  def set_note
    @note = Note.find(params[:id])
  end
  
end

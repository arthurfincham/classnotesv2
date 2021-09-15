module NotesHelper

  def format_date(note)
    note.note_date.strftime("#{note.note_date.day.ordinalize} %B %Y")
  end

  def table_header
    url = request.path_info
    if url.include? 'tags'
      request[:tag]
    elsif url.include? 'instructors'
      request[:instructor]
    elsif url.include? 'note_titles'
      request[:note_title]
    else
      "All Notes"
    end
  end

end

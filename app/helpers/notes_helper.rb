module NotesHelper

  def format_date(note)
    note.note_date.strftime("#{note.note_date.day.ordinalize} %b %Y")
  end

  def table_header
    url = request.path_info
    if url.include? 'tags'
      request[:tag].parameterize(separator: '_')
    else
      "All Notes"
    end
  end

  def format_title(note)
    if note.note_title
      note.note_title.parameterize(separator: '_').downcase
    end
  end

  def format_tags(note)
    note.tag_list.map do |tag|
      tag.parameterize(separator: '_').downcase
    end.join(", ")
  end

end

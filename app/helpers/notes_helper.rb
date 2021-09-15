module NotesHelper

  def format_date(note)
    note.note_date.strftime("#{note.note_date.day.ordinalize} %b %Y")
  end

  def table_header
    url = request.path_info
    if url.include? 'tags'
      request[:tag].parameterize(separator: '_')
    elsif url.include? 'instructors'
      request[:instructor].parameterize(separator: '_')
    elsif url.include? 'note_titles'
      request[:note_title].parameterize(separator: '_')
    else
      "All Notes"
    end
  end

  def format_title(note)
    note.note_title_list.map do |title|
      title.parameterize(separator: '_').downcase
    end[0]
  end

  def format_tags(note)
    note.tag_list.map do |tag|
      tag.parameterize(separator: '_').downcase
    end.join(", ")
  end

end

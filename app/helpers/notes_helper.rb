module NotesHelper
  def format_date(note)
    note.note_date.strftime("#{note.note_date.day.ordinalize} %b %Y")
  end

  def short_format_date(note)
    note.note_date.strftime("%a #{note.note_date.day.ordinalize} %b")
  end

  def table_header
    url = request.path_info
    if url.include? 'tags'
      request[:tag].parameterize(separator: '_')
    elsif url.include? 'notes/new'
      'New Note'
    elsif url.include? 'notes' && 'edit'
      "##{@note.id}"
    else
      'All Notes'
    end
  end

  def format_title(note)
    note.note_title.parameterize(separator: '_').downcase if note.note_title
  end

  def format_tags(note)
    note.tag_list.map do |tag|
      tag.parameterize(separator: '_').downcase
    end
  end
end

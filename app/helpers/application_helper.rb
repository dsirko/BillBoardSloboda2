module ApplicationHelper
  def tag_cloud(tags, classes)
    return [] if tags.empty?
    max_count = tags.sort_by {|e| e[:advertisements.size]}.last.advertisements.size.to_f
    tags.each do |tag|
      index = ((tag.advertisements.size.to_f / max_count) * (classes.size - 1))
      yield tag, classes[index.nan? ? 0 : index.round]
    end
  end
end

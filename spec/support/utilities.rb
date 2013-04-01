def full_title(page_title)
  base_title = "Virgo - Inventory App"
  if page_title.empty?
    base_title
  else
    "#{base_title} | #{page_title}"
  end
end
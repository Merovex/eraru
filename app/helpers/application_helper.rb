module ApplicationHelper
 def title(s)
    s = s.titleize
    @page_title = s
    return "<h1>#{s}</h1>".html_safe
  end
  def field_error(o, k)
  	return "" if o.errors.messages[k].nil?
  	n = o.errors.messages[k].shift
  	m = {
  		:kind => "Type of correction #{n}",
  		:text => "Text #{n}",
  		:location => "Page or Location #{n}"
  	}[k]
  	m = o.errors.messages[k].shift if m.nil?
  	return "<div class='red-text'>Error: #{m}</div>".html_safe
  end
end

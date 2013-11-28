module ApplicationHelper
  def nav_link(name, path)
    if current_page?(path)
      @title = name
    end
    content_tag('li', :class=>(current_page?(path) ? 'active' : nil) ){link_to(name,path)}

  end
end

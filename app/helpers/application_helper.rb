module ApplicationHelper
  def nav_link(name, path)
    if current_page?(path)
      @title = name
    end
    content_tag('li', :class=>(current_page?(path) ? 'active' : nil) ){link_to(name,path)}
  end

  def markdown(content)
    @markdown ||= Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, space_after_headers: true, fenced_code_blocks: true)
    @markdown.render(content).html_safe
  end
end

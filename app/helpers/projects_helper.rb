module ProjectsHelper
  def icon_link_to(icon, *args)
    link_to *args do
      "<i class=\"#{icon}\"></i>".html_safe
    end
  end
end

module TextHelper
  def icon_tag(type)
    return '<span class="icon #{type}">&nbsp;</span>'.html_safe
  end
end
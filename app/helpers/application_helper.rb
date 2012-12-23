module ApplicationHelper
 def hidden_div_if(condition, attributes = {}, &block)
    if condition
      attributes["style"] = "display: none"
    else
      attributes["style"] = "display: yes"
    end
    content_tag("div", attributes, &block)
 end
end

module ApplicationHelper
  def code(language, code = nil, &block)
    code = capture(&block) if block_given?
    code = "<%#{code.strip} %>" if language == :erb
    CodeRay.highlight(code.html_safe, language, css: :style).html_safe
  end
end

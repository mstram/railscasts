# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def textilize(text)
    Textilizer.new(text).to_html unless text.blank?
  end

# http://github.com/leethal/redcloth-with-coderay/tree/master
#def textilize(text)
#     RedCloth.new(text).to_html(:textile, :refs_syntax_highlighter)
#   end

end

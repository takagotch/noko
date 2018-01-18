module HtmlBuilder
  def markup
    root = Nokogiri::HTML::DocumentFragment.parse('')
    Nokogiri::HTML::Builder.with(root) do |doc|
      yeild(doc)
    end
    root.to_html.html_safe
  end
end


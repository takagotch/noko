#
#.parse
#toutf8; 'kcov'
#doc = Nokogiri::HTML.parse(page.body.toutf8)
#
def doc
  return @doc if @doc
  @doc = Nokogiri::HTML(@body) if
    @body && html? rescue nil
end


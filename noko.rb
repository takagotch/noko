
def doc
  return @doc if @doc
  @doc = Nokogiri::HTML(@body) if
    @body && html? rescue nil
end


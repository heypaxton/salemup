class Importer
  def fetch_feed(feed)
    xml = SimpleRSS.parse open(feed)  
  end
end

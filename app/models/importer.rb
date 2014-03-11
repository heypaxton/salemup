class Importer
  def fetch_feed(feed)
    xml = SimpleRSS.parse open(feed)  
  end

  def commit_articles(data)
    if data != nil
      data.items.each do |item|
        Article.create(
          title: item.title,
          description: item.description,
          published_date: item.pubDate
        )
      end
    else
      nil
    end
  end
end

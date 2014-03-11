require 'spec_helper'

describe Importer do
  it "should fetch a news feed" do
    importer = Importer.new
    feedPath = Rails.root.join('spec','fixtures') + 'articles'
    xml = importer.fetch_feed(feedPath)
    xml.channel.title.should_not eq nil
  end

  it "should import articles in a database" do
    importer = Importer.new
    feedPath = Rails.root.join('spec','fixtures') + 'articles'
    data = importer.fetch_feed(feedPath)
    importer.commit_articles(data)
    raw_data_title = data.entries.first.title
    database_data_title = Article.find_by_title(raw_data_title).title
    database_data_title.should eq raw_data_title
  end
end

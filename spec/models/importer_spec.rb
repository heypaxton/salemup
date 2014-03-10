require 'spec_helper'

describe Importer do
  it "should fetch a news feed" do
    importer = Importer.new
    feedPath = Rails.root.join('spec','fixtures') + 'articles'
    xml = importer.fetch_feed(feedPath)
    xml.channel.title.should_not eq nil
  end

  xit "should import articles in a database" do

  end
end

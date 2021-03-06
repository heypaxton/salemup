require 'spec_helper'

describe Article do
  it { should validate_presence_of :title }
  it { should validate_presence_of :description }
  it { should validate_presence_of :published_date }
end

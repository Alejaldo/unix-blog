require 'rails_helper'

describe Article do
  describe "validations" do
    it { should validate_presence_of :title }
    it { should validate_presence_of :text }
  end
  
  describe "associations" do
    it { should have_many :comments }
  end

  describe "#subject" do
    it "returns the article subject" do
      article = create(:article, title: "Lorem Ipsum") #create article object in tricky way
      expect(article.subject).to eq 'Lorem Ipsum' #assert
    end
  end
end
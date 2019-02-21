# require 'rails_helper'
require "spec_helper"

describe Article do
  describe "validations" do
    it { should validate_presence_of :title }
    it { should validate_presence_of :text }
  end

  describe "assotiations" do
    it { should have_many :comments }
  end

  describe "#suject" do
    it "returns the article title" do
      article = create(:article, title: 'Lorem ipsum')
      expect(article.subject).to eq 'Lorem ipsum'
    end
  end

  describe "#last_comment" do 
    it "returns the last comment" do 
      # create article with comments
      article = create(:article_with_comments)

      # test
      expect(article.last_comment.body).to eq "comment body 3"
    end
  end
end

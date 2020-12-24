require 'rails_helper'

feature "Add comment" do
  before :each do
    sign_up
  end

  scenario "allow user to add a comment" do
    visit new_article_path

    fill_in :article_title, :with => "Test Article Title"
    fill_in :article_text, :with => "Content for new article"

    click_button I18n.t('articles.submit_button')

    fill_in :comment_body, :with => "eba"

    click_button I18n.t('comments.add')

    expect(page).to have_content "eba"
  end
end
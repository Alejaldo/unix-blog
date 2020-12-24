require "rails_helper"

feature "Article correction" do
  before(:each) do
    sign_up
  end

  scenario "allows user to correct article" do

    visit new_article_path
    
    fill_in :article_title, :with => "Test Article Title"
    fill_in :article_text, :with => "Content for new article"

    click_button I18n.t('articles.submit_button')

    visit edit_article_path(Article.last)

    fill_in :article_title, :with => "New-Title"
    click_button I18n.t('articles.save_changes')

    expect(page).to have_content "New-Title"

    visit edit_article_path(Article.last)    

    fill_in :article_text, :with => "Content-for-edit-article"
    click_button I18n.t('articles.save_changes')

    expect(page).to have_content "Content-for-edit-article"
  end
end
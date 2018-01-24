feature 'adding link' do
  scenario 'user can add a link' do
    visit('/links')
    click_button 'add link'
    fill_in :new_link_title, with: 'Wikipedia'
    fill_in :new_link_url, with: 'http://www.wikipedia.org'
    click_button 'create link'
    expect(page).to have_content('Wikipedia')
  end
end

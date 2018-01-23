feature 'homepage' do
  scenario 'homepage exists' do
    visit('/')
    expect(page.status_code).to eq 200
    expect(page).to have_content "Here are your bookmarks:"
  end
end

feature 'Viewing Links' do
  scenario 'I can see an existing link' do
    Link.create(url: 'http://www.elliewem.co.uk', title: 'Ellie Wem')
    visit('/links')
    within 'ul#links' do
      expect(page).to have_content('Ellie Wem')
    end
  end
end

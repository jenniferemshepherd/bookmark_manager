feature 'Link created with multiple tags' do
  scenario 'Link contains multiple tags' do
    visit ('/links/new')
    fill_in :new_link_title, with: 'Ellie Wem'
    fill_in :new_link_url, with: 'http://www.elliewem.co.uk'
    fill_in :new_link_tag, with: 'friends, happy'
    click_button 'create link'
    link = Link.first
    expect(link.tags.map(&:tag)).to eq(['friends', 'happy'])
  end
end

feature 'adding a tag' do
  scenario 'user can add a tag when creating a link' do
    visit ('/links/new')
    fill_in :new_link_title, with: 'Ellie Wem'
    fill_in :new_link_url, with: 'http://www.elliewem.co.uk'
    fill_in :new_link_tag, with: 'friends'
    click_button 'create link'
    link = Link.first
    expect(link.tags.map(&:tag)).to include('friends')
  end
end

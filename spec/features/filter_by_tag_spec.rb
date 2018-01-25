feature 'viewing links by tags' do
  scenario 'find links with the bubbles tag' do
    Link.create(url: 'www.elliewem.co.uk',
             title: 'Ellie Wem',
             tags: [Tag.first_or_create(tag: 'bubbles')])
    Link.create(url: 'www.google.co.uk',
             title: 'Google',
             tags: [Tag.first_or_create(tag: 'search')])
    visit '/tags/bubbles'
    expect(page).to have_content('Ellie Wem')
    expect(page).not_to have_content('Google')
  end
end

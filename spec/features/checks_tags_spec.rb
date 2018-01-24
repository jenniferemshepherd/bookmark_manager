
feature 'checking the tags can be filtered' do

  # before :each do
  #   Link.create(url: 'http://www.makersacademy.com', title: 'Makers Academy', tags: [Tag.first_or_create(name: 'education')])
  #   Link.create(url: 'http://www.google.com', title: 'Google', tags: [Tag.first_or_create(name: 'search')])
  #   Link.create(url: 'http://www.zombo.com', title: 'This is Zombocom', tags: [Tag.first_or_create(name: 'bubbles')])
  #   Link.create(url: 'http://www.bubble-bobble.com', title: 'Bubble Bobble', tags: [Tag.first_or_create(name: 'bubbles')]
  # end

  scenario 'user only sees links with "bubble" tag on that page' do
    link = Link.new(url: 'http://www.elliewem.co.uk',
                title: 'Ellie Wem',
                tags: [Tag.first_or_create(tag: 'bubbles')])
    link = Link.new(url: "http://www.google.com",
                title: "My bubbling bookmark",
                tags: [Tag.first_or_create(tag: 'search')])
    visit('/tags/bubbles')
    # visit ('/links/new')
    # fill_in :new_link_title, with: 'Ellie Wem'
    # fill_in :new_link_url, with: 'http://www.elliewem.co.uk'
    # fill_in :new_link_tag, with: 'bubbles'
    # click_button 'create link'
    # click_button 'add link'
    # fill_in :new_link_title, with: 'Google'
    # fill_in :new_link_url, with: 'http://www.google.co.uk'
    # fill_in :new_link_tag, with: 'search'
    # click_button 'create link'
    # click_button 'bubbles'
    expect(page).not_to have_link('Google')
    expect(page).to have_content('Ellie Wem')
  end
end

#
# link = Link.new(url: 'http://www.elliewem.co.uk',
#             title: 'Ellie Wem',
#             tags: [Tag.first_or_create(tag: 'bubbles')])
# link = Link.new(url: "http://www.google.com",
#             title: "My bubbling bookmark",
#             tags: [Tag.first_or_create(name: 'search')])

# tag  = Tag.first_or_create(tag: 'bubbles')
# link.tags << tag
# link.save
#
# tags: [Tag.first_or_create(tag: 'bubbles')]


#
# Bookmark.create(url: "http://www.makersacademy.com", title: "My test bookmark", tags: [Tag.first_or_create(name: 'ruby')])
#
# Bookmark.create(url: "http://www.google.com", title: "My bubbling bookmark", tags: [Tag.first_or_create(name: 'bubbles')])
#
# visit ('/tags/bubbles')
#
# expect(page).to have_content("My bubbling bookmark")
#
# expect(page).not_to have_content("My test bookmark")

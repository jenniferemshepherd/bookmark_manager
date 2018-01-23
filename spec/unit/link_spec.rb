require_relative '../../app/models/link'
# require 'link'

describe Link do
  subject(:link) { described_class.create("Ellie Wem", "http://www.elliewem.co.uk") }

  it 'has an id' do
    expect(link.id).to eq 1
  end

  it 'has a title' do
    expect(link.title).to eq "Ellie Wem"
  end

  it 'has a url' do
    expect(link.url).to eq "http://www.elliewem.co.uk"
  end
end

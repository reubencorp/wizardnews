require 'rspec'
require_relative '../lib/wizard_article'

describe WizardArticle do

  let(:article){WizardArticle.new('Hello', 'About me', 'article contents')}

  it 'can return a title' do
    expect(article.title).to eq('Hello')
  end
  it 'can return a description' do
    expect(article.description).to eq('About me')
  end

  it 'can return contents' do
    expect(article.contents).to eq('article contents')
  end



end
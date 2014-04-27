require_relative '../spec_helper'


describe Article do

  # let(:article){Article.new(title: 'myTest', 
  #                           text: 'this is a text test')}

  before :each do
    article = Article.new (title: 'myTest', 
                            text: 'this is a text test')
  end

  it 'works' do
    expect(true).to be_truthy
  end




  it 'has a title longer than 5 and less than 24 chars' do 
    expect(article.title).to eq('myTest')
  end


  it 'has a text' do
    expect(article.text).to eq('this is a text test')
  end

  it 'checks strong params' do
    article.permit?('fake_controller', 'index').to be_true
  end

end

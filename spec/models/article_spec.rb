require_relative '../spec_helper'


describe Article do

  # let(:article){Article.new(title: 'myTest',
  #                           text: 'this is a text test')}

  before :each do
    @article = Article.new title: 'myTest', text: 'testicle'
  end

 it 'should be invalid with a title shorter than 5' do
    jasons_article = Article.new title: 'shrt', text: 'something'
    expect(jasons_article.valid?).to be_falsey
  end


 it 'should be valid with a title lenght of 5' do
    jasons_article = Article.new title: 'enuff', text: 'something'
    expect(jasons_article.valid?).to be_truthy
  end

 it 'should be invalid with a title longer than 24' do
    jasons_article = Article.new title: '1234567890123456789012345', text: 'something'
    expect(jasons_article.valid?).to be_falsey
  end


 it 'should be valid with a title lenght of 24' do
    jasons_article = Article.new title: '123456789012345678901234', text: 'something'
    expect(jasons_article.valid?).to be_truthy
  end



  it 'works' do
    expect(true).to be_truthy
  end




  it 'has a title' do 
    expect(@article.title).to eq('myTest')
  end


  it 'has a text' do
    expect(@article.text).to eq('testicle')
  end

end

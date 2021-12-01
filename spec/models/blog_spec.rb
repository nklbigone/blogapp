require 'rails_helper'
describe Blog do
  it "counts titleA" do
    Blog.create(title: 'TitleA', content: 'AIUEO')
    Blog.create(title: 'Title AA', content: 'Kakikukeko')
    Blog.create(title: 'Title', content: 'SA Shi Su Se So')
    Blog.create(title: 'TitleB', content: 'TA Chi Tsu Te to')
    Blog.create(title: 'TitleA', content: 'What is it')
    expect(Blog.count_titleA).to eq 2
  end
  it "counts titleA When titleA does not exist " do
    Blog.create(title: 'Title C', content: 'AIUEO')
    Blog.create(title: 'Title AA', content: 'Kakikukeko')
    Blog.create(title: 'Title', content: 'SA Shi Su Se So')
    Blog.create(title: 'TitleB', content: 'TA Chi Tsu Te to')
    Blog.create(title: 'Title C', content: 'What is it')
    expect(Blog.count_titleA).to eq 0
  end
end
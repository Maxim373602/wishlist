require 'rails_helper'


describe Post do
	it "is valid with a title, link and description" do
	post = Post.new(title: 'title', link: 'link', description: 'description')
	expect(post).to be_valid
end
	it "is invalid without a title" do
	post = Post.new(title: nil)
	post.valid?
	expect(post.errors[:title]).to include("can't be blank")
end
	it "is invalid without a link" do
	post = Post.new(link: nil)
	post.valid?
	expect(post.errors[:link]).to include("can't be blank")
end
	it "is invalid without a description" do
	post = Post.new(description: nil)
	post.valid?
	expect(post.errors[:description]).to include("can't be blank")
end



end	

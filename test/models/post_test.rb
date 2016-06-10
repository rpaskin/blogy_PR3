require 'test_helper'

class PostTest < ActiveSupport::TestCase
  it "Cria um post" do
    post = Post.new(title: "teste 1", description: "#VitorFrango")

    expect(Post.count).to eq(1)
    expect(Post.last.title).to eq("teste 1")
  end  
end

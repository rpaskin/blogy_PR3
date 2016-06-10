require 'rails_helper'

RSpec.describe Post, type: :model do
  it "Cria um post" do
    post = Post.new(title: "teste 1", description: "#VitorFrango")
    post.save
    expect(Post.count).to eq(1)
    expect(Post.last.title).to eq("teste 1")
  end  
  it "testa validação de presença do titulo" do
    post = Post.new(title: "", description: "#ThorMeier")
    post.save
    expect(Post.count).to eq(0)
  end
  it "testa validação de presença da descricao" do 
    post = Post.new(title: "title 2", description: nil)
    post.save
    expect(Post.count).to eq(0)
  end
  
end

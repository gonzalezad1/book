require 'rails_helper'

RSpec.describe User::BookitemsController, type: :controller do
	
	before(:each) do
  @bookitem = Factory(:bookitem)
	end
	
	describe "PUT update/:id" do
  let(:attr) do 
    { :title => 'new title', :author => 'new author' }
  end

  before(:each) do
    put :update, :id => @bookitem.id, :article => attr
    @bookitem.reload
  end

  it { expect(response).to redirect_to(@bookitem) }
  it { expect(@bookitem.title).to eql attr[:title] }
  it { expect(@bookitem.author).to eql attr[:author] }
end
end

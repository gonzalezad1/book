require 'rails_helper'

RSpec.describe Bookitem, type: :model do

	it "should require a title" do
	  Bookitem.new(:title => "").should_not be_valid
	end

	it "should require a author" do
	  Bookitem.new(:author => "").should_not be_valid
	end  

	it "should require a description" do
	  Bookitem.new(:description => "").should_not be_valid
	end  

	it "should require a created_at" do
	  Bookitem.new(:created_at => "").should_not be_valid
	end

	it "should require a updated_at" do
	  Bookitem.new(:updated_at => "").should_not be_valid
	end

	it "should require a user_id" do
	  Bookitem.new(:user_id => "").should_not be_valid
	end

	it "should require a avatar" do
	  Bookitem.new(:avatar => "").should_not be_valid
	end

	describe "Associations" do
	  it "belongs_to user" do
	    assc = described_class.reflect_on_association(:user)
	    expect(assc.macro).to eq :belongs_to
	  end
	end
end

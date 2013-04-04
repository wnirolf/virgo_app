require 'spec_helper'

describe Product do

  let(:user) { FactoryGirl.create(:user) }
  before { @product = user.products.build(name: "Product name", unit: "Product unit", quantity: "8.3", price: "8.2", inventory: "0500")}
  

  subject { @product }

  it { should respond_to(:name) }
  it { should respond_to(:unit) }
  it { should respond_to(:quantity) }  
  it { should respond_to(:price) }
  it { should respond_to(:inventory) }  
  it { should respond_to(:user_id) }
  it { should respond_to(:user) }
  its(:user) { should == user }
  
  it { should be_valid }

    describe "accessible attributes" do
    it "should not allow access to user_id" do
      expect do
        Product.new(user_id: user.id)
      end.to raise_error(ActiveModel::MassAssignmentSecurity::Error)
    end    
  end


  describe "when user_id is not present" do
    before { @product.user_id = nil }
    it { should_not be_valid }
  end    
end
require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Project do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :last_build_id => 1,
      :last_failure_id => 1,
      :last_successful_id => 1
    }
  end

  it "should create a new instance given valid attributes" do
    Project.create!(@valid_attributes)
  end
  
  it "should load Projects from the given location" do
    Project.load("spec/data/cc.xml")
    
    results = [ {:name => "Gynzy", :state => "Success"},
                {:name => "Synthlijst.nl", :state => "Success"} ]
                
    results.each do |result|
      Project.find_by_name_and_state(result[:name], result[:state]).should_not be_blank
    end  
  end
end

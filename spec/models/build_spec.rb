require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Build do
  before(:each) do
    @valid_attributes = {
      :project_id => 1,
      :state => "value for state"
    }
  end

  it "should create a new instance given valid attributes" do
    Build.create!(@valid_attributes)
  end
end

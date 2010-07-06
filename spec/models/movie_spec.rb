require 'spec_helper'

describe Movie do
  before(:each) do
    @valid_attributes = {
      :title => "value for title",
      :plot => "value for plot"
    }
  end

  it "should create a new instance given valid attributes" do
    Movie.create!(@valid_attributes)
  end
end

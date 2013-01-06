require 'spec_helper'

describe Topic do
  context "smoke" do
    it "can be instantiated" do
      lambda {
        Topic.new.should be_an_instance_of Topic
      }.should_not raise_exception
    end
  end

  context "validations" do
    it "has_many conversations" do
      Topic.new.conversations.should == []
    end
  end
end
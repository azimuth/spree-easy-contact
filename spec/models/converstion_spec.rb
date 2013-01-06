require 'spec_helper'

describe Conversation do
  context "smoke" do
    it "can be instantiated" do
      lambda {
        Conversation.new.should be_an_instance_of(Conversation)
      }.should_not raise_exception
    end
  end

  context "validations" do
    it "must have one topic" do
      Conversation.new.should_not be_valid
      c = Conversation.new
      c.topic = mock_model("Topic", :name => "foo")
      c.should be_valid
    end
  end
end
require 'spec_helper'

describe Photo do
  describe ".all" do
    it "returns collection of url's " do
      Photo.all.should_not be_empty
    end
  end
end

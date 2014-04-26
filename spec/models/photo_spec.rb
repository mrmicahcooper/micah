require 'spec_helper'

describe Photo do
  describe ".all" do
    before do
      Photo.stub(album_photos: [double])
    end
    it "returns collection of url's " do
      Photo.all.should_not be_empty
    end
  end
end

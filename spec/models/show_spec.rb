require 'spec_helper'

describe Show do
  it { should validate_presence_of(:name).with_message("Please specify a name.") }
  it { should validate_presence_of(:picture).with_message("Please specify a picture.") }

  it "should be valid for new show" do
    show = Show.new
    show.valid?
  end

  it "should be valid for existing show" do
    show = Show.first
    show.valid?
  end
end

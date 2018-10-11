require 'rails_helper'

RSpec.describe Alarm, :type => :model do
  it "is valid with all caps" do
    alarm = Alarm.new
    alarm.text = "ALL CAPS"
    expect(alarm).to be_valid
  end

  it "is not valid without all caps" do
    alarm = Alarm.new
    alarm.text = "not all caps"
    expect(alarm).to_not be_valid
  end

  it "is not valid with empty text" do
    alarm = Alarm.new
    expect(alarm).to_not be_valid
  end

  it "is valid with punctuation and emoji" do
    alarm = Alarm.new
    alarm.text = "OMG THIS IS SO FUN!!!! 😁"
    expect(alarm).to be_valid
  end
end


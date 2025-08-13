require "spec_helper"
require_relative "../lib/substrings"

RSpec.describe "Caesar Cipher" do
  it "runs hello world test" do
    expect("hello").to eq("hello")
  end
  it "basic test" do
    dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]   
    expect( substrings("below", dictionary)).to eq({ "below" => 1, "low" => 1 })
  end
end

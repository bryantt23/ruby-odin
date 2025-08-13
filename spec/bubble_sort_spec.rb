require "spec_helper"
require_relative "../lib/bubble_sort"

RSpec.describe "#bubble_sort" do
  it "sorts the Odin example" do
    expect(bubble_sort([4, 3, 78, 2, 0, 2])).to eq([0, 2, 2, 3, 4, 78])
  end

  it "handles an already sorted array" do
    expect(bubble_sort([1, 2, 3, 4, 5])).to eq([1, 2, 3, 4, 5])
  end

  it "sorts a reverse-sorted array" do
    expect(bubble_sort([9, 7, 5, 3, 1])).to eq([1, 3, 5, 7, 9])
  end

  it "handles duplicates correctly" do
    expect(bubble_sort([3, 3, 2, 2, 1, 1])).to eq([1, 1, 2, 2, 3, 3])
  end

  it "handles negatives and positives" do
    expect(bubble_sort([0, -2, 5, -1, 3])).to eq([-2, -1, 0, 3, 5])
  end

  it "handles single-element arrays" do
    expect(bubble_sort([42])).to eq([42])
  end

  it "handles empty arrays" do
    expect(bubble_sort([])).to eq([])
  end
end

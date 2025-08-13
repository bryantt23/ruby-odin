require "spec_helper"
require_relative "../lib/stock_picker"

RSpec.describe "#stock_picker" do
  it "returns best buy/sell pair for normal input" do
    expect(stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1, 4])
  end

  it "handles all-decreasing prices by returning no trade" do
    expect(stock_picker([9, 8, 7, 6])).to eq([])
  end

  it "handles flat prices by returning no trade" do
    expect(stock_picker([5, 5, 5])).to eq([])
  end

  it "picks earliest profitable pair in case of tie" do
    # Profit 5 possible from (buy=0,sell=2) and (buy=1,sell=3), should pick earliest
    expect(stock_picker([5, 1, 6, 6])).to eq([1, 2])
  end

  it "returns [] for empty input" do
    expect(stock_picker([])).to eq([])
  end

  it "returns [] for single-day input" do
    expect(stock_picker([5])).to eq([])
  end
end

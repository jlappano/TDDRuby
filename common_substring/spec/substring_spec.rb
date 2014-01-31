require 'spec_helper'
require_relative '../lib/substring'
## `common_substrings`

# Write a function, `common_substrings(str1, str2)` that takes two
# strings and returns the longest common substring.

describe '#common_substrings'do
  it "returns a common substring" do
    expect(common_substrings("toots", "poots")).to eq("oots")
  end

  it "only returns the largest substring" do
    expect(common_substrings("tootxt somethinggirl", "pootyz somethingboy")).to eq("something")
  end
end
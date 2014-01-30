require 'spec_helper'
require_relative '../lib/ceaser'

## `caesar_cipher`

# Write a function that takes a message and an increment amount and
# outputs the same letters shifted by that amount in the
# alphabet. Assume lowercase and no punctuation. Preserve spaces.

describe '#caeser_cipher' do
  it "returns an encrytion based increment amount" do
      expect(caeser_cipher("toots", 2)).to eq("vqqvu")
  end

  it "preserves spaces" do
      expect(caeser_cipher("aaa bbb", 5)).to eq("fff ggg")
  end
end
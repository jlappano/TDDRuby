# Implement the Folding Cipher. It folds the alphabet in half and uses
# the adjacent letter. Ie. a <=> z, b <=> y, c <=> x, m <=> n.
require 'spec_helper'
require_relative '../lib/folding_cipher'


describe "#folding_cipher" do
  it "returns an encryption" do
    expect(folding_cipher("aabbcc")).to eq("zzyyxx")
    expect(folding_cipher("mlkj")).to eq("nopq")
  end
end
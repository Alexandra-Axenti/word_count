require('rspec')
require('word_count')

describe('String#word_count') do
  it("counts how many times the word 'peck' is repeated in the input sentence as a full and partial match") do
    expect("Catch a can canner canning a can as he does the cancan, and you've caught a can-canning can-canning can canner!".word_count("can")).to(eq([3,12]))
  end
end

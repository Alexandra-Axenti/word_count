require('rspec')
require('word_count')

describe('String#word_count') do
  it("counts how many times the word 'peck' is repeated in the input sentence") do
    expect("If Peter Piper picked a peck of pickled peppers, where’s the peck of pickled peppers Peter Piper picked?".word_count("peck")).to(eq(2))
  end
end

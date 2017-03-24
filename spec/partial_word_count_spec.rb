require('rspec')
require('partial_word_count')

describe('String#partial_word_count') do
  it("counts how many times the word 'cat' is repeated in the input sentence, including words partial match") do
    expect("I’m taking my cat on a walk through the catacombs.".partial_word_count("cat")).to(eq(2))
  end
end

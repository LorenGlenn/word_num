require('rspec')
require('num_word')

describe('Num_word#change_num') do
  it('changes numbers to words') do
    expect(Num_word.new(89).change_num()).to(eq("eighty nine"))
  end
end

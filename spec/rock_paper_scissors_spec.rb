require("rock_paper_scissors")
require("rspec")
require('pry')

describe("String#rock_paper_scissors") do
  it("returns 'rock wins' when rock and scissors are entered") do
    expect(['rock','scissors'].rock_paper_scissors).to(eq('rock wins'))
  end
  it("returns '(first entry) wins' when it is the winning pick") do
    expect(['scissors', 'paper'].rock_paper_scissors).to(eq('scissors wins'))
  end
  it("returns 'Tie game!' when both picks are the same") do
    expect(['paper', 'paper'].rock_paper_scissors).to(eq('Tie game!'))
  end
end

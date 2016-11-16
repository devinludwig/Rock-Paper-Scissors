class String
  define_method(:rock_paper_scissors) do
    combos = {
      'rock' => 'scissors',
      'scissors' => 'paper',
      'paper' => 'rock'
    }
    computer = combos.keys[rand(3)]

    if combos.fetch(self).== computer
      [self.capitalize() + ' beats ' + computer + '. You win!', computer]
    elsif combos.fetch(computer).== self
      [computer.capitalize() + ' beats ' + self + '. You lose!', computer]
    elsif self.==computer
      ['Tie game!', computer]
    end
  end
end

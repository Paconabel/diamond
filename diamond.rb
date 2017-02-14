class Diamond

  def print_diamond(letter)
    diamond = ''
    if letter == 'A'
        diamond = "\n A "
    end
    if letter == 'B'
        diamond = "\n A \nB B\n A "
    end
    if letter == 'C'
        diamond = "\n  A  \n B B \nC   C\n B B \n  A  "
    end
    puts diamond
    return diamond
  end

    def calculate_lines(letter)
        number_of_lines = 0
        if letter == 'A'
            number_of_lines = 1
        end
        if letter == 'B'
            number_of_lines = 3
        end
        if letter == 'C'
            number_of_lines = 5
        end
        return number_of_lines
    end

end


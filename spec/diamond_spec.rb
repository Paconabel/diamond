require_relative '../diamond'

describe 'Diamond' do
    it 'prints A diamond' do
        diamond = Diamond.new
        letter = diamond.print_diamond('A')
        expect(letter).to eq("\n A ")
    end

    it 'prints B diamond' do
        diamond = Diamond.new
        result = diamond.print_diamond('B')
        expect(result).to eq("\n A \nB B\n A ")
    end

    it 'prints C diamond' do
        diamond = Diamond.new
        result = diamond.print_diamond('C')
        expect(result).to eq("\n  A  \n B B \nC   C\n B B \n  A  ")
    end

    it 'calculates numbers of lines' do
        diamond = Diamond.new
        letter_A = diamond.calculate_lines('A')
        letter_B = diamond.calculate_lines('B')
        letter_C = diamond.calculate_lines('C')
        expect(letter_A).to eq(1)
        expect(letter_B).to eq(3)
        expect(letter_C).to eq(5)
    end

end

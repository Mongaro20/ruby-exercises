
def shift_letters(str, shift)
  shifted_str = ""

  str.each_char do |char|
    if char.match(/[a-zA-Z]/)
      ascii_offset = char.downcase.ord - 'a'.ord
      shifted_offset = (ascii_offset + shift) % 26
      shifted_char = (shifted_offset + 'a'.ord).chr
      shifted_str << (char == char.downcase ? shifted_char : shifted_char.upcase)
    else
      shifted_str << char
    end
  end

  shifted_str
end

# Example usage

puts "What string would you like to shift?"
user_string = gets.chomp()

puts "How many numbers would you like to shift by?"
factor = gets.chomp()
factor_int = factor.to_i

shifted_string = shift_letters(user_string, factor_int)
puts shifted_string






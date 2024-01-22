def caesar_cipher(text, shift_by)
  text.split('').reduce('') do |res, char|
    base = char.ord < 91 ? 65 : 97
    res += char.between?('A','Z') || char.between?('a','z') ? ((char.ord - base + shift_by) % 26 + base).chr : char
  end
end

require 'byebug'

def uniq_passphrase(file_name)
  count = 0

  File.foreach(file_name) do |line|
    passphrase = line.chomp.split
    passphrase.map! { |word| word.chars.sort.join }

    count += 1 if passphrase.uniq == passphrase
  end

  count
end

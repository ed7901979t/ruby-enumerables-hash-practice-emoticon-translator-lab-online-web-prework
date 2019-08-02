# require modules here

def load_library
  # code goes here
  require "yaml"
  emoticons = YAML.load_file('emoticons.yml')
end

def get_japanese_emoticon
  # code goes here
  puts "Please enter the emoticon that you'd like translate"
  input = gets.chomp
  input2 = gets.downcase.chomp
  test.each do |emotion, emoticons|
    if emoticons.first == input
      puts "Here is the Japanese version of your emoticon:   #{emoticons.last}"
    end
  end
end


def get_english_meaning()
  puts "Please enter the emoticon that you'd like translate"
  input = gets.chomp
  input2 = gets.downcase.chomp
  test.each do |emoticons, emotion|
    if emotion.first == input
      puts "Here is the English version of your emoticon:   #{emotion.last}"
    end
  end
end


test = {
  :angel => ["O:)", ":("],
  :angry => [">:(", ":)"]
  }



 
get_japanese_emoticon(test)
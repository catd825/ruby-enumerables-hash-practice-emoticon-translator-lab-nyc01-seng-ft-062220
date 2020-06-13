require 'pry'
# emoticons.yml

def load_library
  # code goes here - should return hash where each key is the name of an emoticon.  each emoticon name should poin tto a nested hash containing an :english key and a :japanese key and point to the english/japanese versions of the emoticon.
    
    require "yaml"
emoticons = YAML.load_file('emoticons.yml')
emoticons

end
#binding.pry


def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
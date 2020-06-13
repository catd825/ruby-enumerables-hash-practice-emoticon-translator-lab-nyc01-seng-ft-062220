require 'pry'
require 'yaml'

def load_library(yml)
  # code goes here - should return hash where each key is the name of an emoticon.  each emoticon name should poin tto a nested hash containing an :english key and a :japanese key and point to the english/japanese versions of the emoticon.

emoticons = YAML.load_file(yml)
  new_hash = {} #create new hash of YML data
  emoticons.each do |emotion, emoticon| #
    new_hash[emotion] = {
      :english => emoticon[0], 
    :japanese => emoticon[1]
    }
  end
  new_hash
end



def get_japanese_emoticon(load_library, new_hash)
  # code goes here
  
end

def get_english_meaning (load_library, new_hash)
  # code goes here
end
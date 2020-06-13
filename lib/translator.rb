require 'pry'
require 'yaml'

def load_library(yml)
  # code goes here - should return hash where each key is the name of an emoticon.  each emoticon name should point to a nested hash containing an :english key and a :japanese key and point to the english/japanese versions of the emoticon.

emoticons = YAML.load_file(yml) #declare emoticons as variable for YAML
  new_hash = {} #create new hash of YML data
  emoticons.each do |emotion, emoticon| #iterates over emoticons =, emotion as key and emoticon as value 
    new_hash[emotion] = {   #update empty new hash as 
      :english => emoticon[0], #english key accesses first element of emoticon array
    :japanese => emoticon[1] #japanese key accesses second element of emoticon array
    }
  end 
  binding.pry
  new_hash #must return new hash
end



def get_japanese_emoticon (yml, west_emo) 
  library = load_library(yml) 
    library.each do |key, value| 
      return value[:japanese] if key[:english] == west_emo 
    end
  "Sorry, that emoticon was not found" 
end



def get_english_meaning(yml, jap_emo)
  # code goes here
  
  library = load_library(yml)
    library.each do |english_def, emoticon|
      return english_def if emoticon[:japanese] == jap_emo
    end
  "Sorry, that emoticon was not found"
end


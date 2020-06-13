require 'pry'
require 'yaml'

def load_library(yml)

emoticons = YAML.load_file(yml) #declare emoticons as variable for YAML file path
  
  new_hash = {} #method needs to create new hash
  
  emoticons.each do |emotion, emoticon| #iterates over emoticons, emotion as key and emoticon as value 
  
    new_hash[emotion] = {   #update empty new hash as 
      :english => emoticon[0], #english key accesses first element of emoticon array
      :japanese => emoticon[1] #japanese key accesses second element of emoticon array
    }
    
  end 
  new_hash #must return new hash
end



def get_japanese_emoticon (yml, eng_emoticon) 
  library = load_library(yml) 
    library.each do |emotion, emoticon| 
        binding.pry
      return emoticon[:japanese] if emotion[:english] == eng_emoticon 
    end
  "Sorry, that emoticon was not found" 
end



def get_english_meaning(yml, jap_emo)
  # code goes here
  
  library = load_library(yml)
    library.each do |eng_emotion, emoticon|
      return eng_emotion if emoticon[:japanese] == jap_emo
    end
  "Sorry, that emoticon was not found"
end


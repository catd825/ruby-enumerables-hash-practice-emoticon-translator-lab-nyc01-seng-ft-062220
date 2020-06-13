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
  new_hash #must return new hash
end



def get_japanese_emoticon (yml, eng_emo.to_s) #pass through file path and english emoticon
  library = load_library(yml) 
  
    #define variable library as passing the YML file through previously created load_library method, which converts the YML file into a nested hash
    library.each do |definition, emo_hash| 
      
      #iterate over the nested hash, using the definition and the emoticon hash (hash contains :eng => emoticon, :jap => emoticon)
      return definition[:japanese] if emo_hash[:english] == eng_emo 
      
      #if the english emoticon entered exists, return associated japanese emoticon
    
    end
  "Sorry, that emoticon was not found" #error message if english emoticon entered does not exist
end



def get_english_meaning(yml, jap_emo)
  # code goes here
  library = load_library(yml)
    library.each do |meaning, idioms|
      return meaning if idioms[:japanese] == jap_emo
    end
  "Sorry, that emoticon was not found"
end


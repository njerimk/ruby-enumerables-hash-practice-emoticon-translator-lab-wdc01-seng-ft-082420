# require modules here
require "yaml"
def load_library(file_path)
  load_library = YAML.load_file('lib/emoticons.yml')
  emoticon_hash = {}
  final_results= load_library.map do |key, value|
     key.tap do |key|
       if !emoticon_hash[key]
          emoticon_hash[key] = {:english => value[0], :japanese => value[1]}
      end
    end
  end
  emoticon_hash
end
file_path = YAML.load_file('lib/emoticons.yml')

load_library(file_path)

def get_japanese_emoticon(file_path, emoticon)
  data = load_library(file_path)
  emoticon_hash = "Sorry, that emoticon was not found"
  emoticon_result = data.select do |key, value|
    if emoticon == data[key][:english]
      emoticon_hash = data[key][:japanese]
      elsif emoticon == data[key][:english] = false
        emoticon_hash 
      end
    end
    emoticon_hash
  end
  file_path = '.lib/emoticons.yml'
 get_japanese_emoticon(file_path,":)")

def get_english_meaning(file_path, emoticon)
  # code goes here
  data = load_library(file_path)
  data.select do |name, value|
    emoticon == name[:japanese]
    puts name[:japanese]
  end
end

get_english_meaning(file_path, "(^_")

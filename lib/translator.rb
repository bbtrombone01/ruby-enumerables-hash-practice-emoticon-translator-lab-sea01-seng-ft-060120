# require modules here
require 'pry'
require 'yaml'

def load_library(file_path)
  file = File.read(file_path)
  last_hash = {}
  emoticons = YAML.load(file)
  emoticons.each do |name, value|
  last_hash[name] = {:english => value[0] ,:japanese => value[1]}
  end 
  last_hash
end
def

<<<<<<< HEAD
def get_english_meaning(file_path,target)
  file = load_library(file_path)
  file.each do |key,hash|
    if file[key][:japanese] == target
      return key
    end
  end 
  return "Sorry, that emoticon was not found"
end 
=======
>>>>>>> 83dce2bee20942275ed7b3c2c035d29b5ac1031d

def get_japanese_emoticon(file_path,target)
  file = load_library(file_path)
  file.each do |key, hash|
    if file[key][:english] == target
      return file[key][:japanese]
    end 
<<<<<<< HEAD
  end
=======
  end 
>>>>>>> 83dce2bee20942275ed7b3c2c035d29b5ac1031d
  return "Sorry, that emoticon was not found"
end 
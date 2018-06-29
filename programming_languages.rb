#require 'pry'
def reformat_languages(languages)
  new_hash = {} 
  languages.each do |style_type, language_hash|
    language_hash.each do |language, type_hash|
      unless new_hash.key?(language)
        new_hash[language] = {type: type_hash[:type], style: [style_type]}
      else
        new_hash[language][:style] << style_type
      end
    end 
  end

  new_hash    
end

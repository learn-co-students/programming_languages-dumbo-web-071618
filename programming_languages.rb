def reformat_languages(languages)
  new_hash = {}
  languages.each do |style,language_hash|
    language_hash.each do |language, type_hash|
      if new_hash[language]
        new_hash[language][:style] << style
      else
        new_hash[language] = {:type => "#{type_hash.values.join}", :style => [style]}
      end
    end
  end
  
  
  new_hash
end


# def reformat_languages(languages)
#   new_hash = {}
#   languages.each do |style,language_hash|
#     language_hash.each do |language, type_hash|
#       new_hash[language] = {:type => "#{type_hash.values.join}"} #, :style => [style]}
      
#     end
#   end
  
  
#   new_hash
# end

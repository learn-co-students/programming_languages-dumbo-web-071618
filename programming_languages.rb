def reformat_languages(languages_by_style)
  
new_hash = {}
languages_by_style.each do |language_keys,languages_hash| 
  languages_hash.each do |name,type_hash| 
    type_hash.each do |type_key,type|
      new_hash[name] ={}
    new_hash[name][:style] ||= []
    new_hash[name][:style] << language_keys
        new_hash[name][type_key]= type

    end
  end
end
return new_hash  
end
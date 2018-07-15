
def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |type,lang|
      lang.each do |langs, stats|
        if !(new_hash.include? langs)
            lang[langs][:style] = [type]
            new_hash[langs] =  stats
        elsif new_hash.include? langs
            new_hash[langs][:style] << type
        end
    end
end
  new_hash
end
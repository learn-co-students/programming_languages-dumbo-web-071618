require 'pry'
def reformat_languages(languages)
  new_hash = languages[:oo].merge(languages[:functional])
  new_hash.each do |k,v|
    if languages[:functional].keys.include?(k) && languages[:oo].keys.include?(k)
      new_hash[k][:style] = [:oo, :functional]
    elsif languages[:oo].keys.include?(k) 
      new_hash[k][:style] = [:oo]
    elsif languages[:functional].keys.include?(k) 
      new_hash[k][:style] = [:functional]
    end 
    end
  return new_hash
end  
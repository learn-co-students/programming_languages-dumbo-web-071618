require 'pry'

languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}

def reformat_languages(languages)
  new_hash = {}
  
  #setting the new template for each language in new_hash
  languages.each do |style,language_data|
    new_language = {}
    language_class = :class 
    
    language_data.each do |language_name,language_type|
      language_class = language_name.to_sym
      
      if new_hash[language_class] == nil 
        new_language[language_class] = {}
        language_type.each do |type_class,type|
          new_language[language_class][:type] = type 
        end
        new_language[language_class][:style] = [style]
      else
        new_hash[language_class][:style] << style 
      end
      
    end
    
    new_hash.merge!(new_language)
  end
  new_hash
end

puts reformat_languages languages 
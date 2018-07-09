require 'pry'

def reformat_languages(languages)
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
new_style_array=[]
new_hash = {}
  languages.each do |new_style, new_language|
    new_language.each do |language_name, new_type|
        if new_hash[language_name] != nil
          new_hash[language_name][:style] << new_style

        else
        new_hash[language_name] = new_type
        new_hash[language_name][:style] = [new_style]

end
end
end
new_hash
end

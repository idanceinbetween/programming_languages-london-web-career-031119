{
  :ruby => {
    :type => "interpreted",
    :style => [:oo]
  },
  :javascript => {
    :type => "interpreted",
    :style => [:oo, :functional]
  },
  :python => {
    :type => "interpreted",
    :style => [:oo]
  },
  :java => {
    :type => "compiled",
    :style => [:oo]
  },
  :clojure => {
    :type => "compiled",
    :style => [:functional]
  },
  :erlang => {
    :type => "compiled",
    :style => [:functional]
  },
  :scala => {
    :type => "compiled",
    :style => [:functional]
  }
}

#In this new hash, go through each key.
#Check if this key is part of the value of the old hash
languages.each do |hash|#[{}, {}]
  hash.values.each  #[{:ruby},{}]

languages[:oo].keys # [:ruby, :javascript, :python, :java]
languages[:functional].keys #[:clojure, :erlang, :scala, :javascript]

new_hash.each do |a_lang, v|
  n = 0
  while n<languages.keys.length
    if languages[n].keys.any? {|b_lang| b_lang == a_lang}
      a_lang[:style] = [languages[n]]
      n+=1
  end
end


#ORIGINAL

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

languages[:oo]

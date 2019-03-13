def reformat_languages(languages)
  #extract value of :oo first, then value of :functional
  #(i.e. iterate over the values of lanaguages)
  #languages.values returns an array of 2 hashes. [{},{}]
  #work with these values
  #.each do |hash|
  #hash.each
  #input the top level KEY, get to the most inner level hash including {}
  #then push new key-value pair into this hash using top level KEY
  new_hash = {}
  languages.each do |k,v|
    languages[k].each {|k,v| new_hash[k] = v}
  end

  new_hash.each do |a_lang, v|
    n = 0
    while n<languages.keys.length
      if languages.values[n].keys.any? {|b_lang| b_lang == a_lang} && v[:style] == nil
        v[:style] = [languages.keys[n]]
      elsif languages.values[n].keys.any? {|b_lang| b_lang == a_lang} && v[:style] != nil
        v[:style] << languages.keys[n]
      end
      n+=1
    end
  end

  new_hash
end

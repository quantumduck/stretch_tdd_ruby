class Dictionary < Hash

  def add(term)
    case term.class.to_s
    when 'String'
      store(term, nil)
    when 'Hash'
      self[term.keys.first] = term.values.first
    end
  end

  # def include?(term)
  #
  # end

  def entries
    self
  end

  def keywords
    keys.sort
  end

  def find(term)
    result = {}
    keys.each { |k| result.store(k, self[k]) if k.start_with?(term) }
    result
  end

end

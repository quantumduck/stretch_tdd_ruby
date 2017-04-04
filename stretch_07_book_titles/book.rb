class Book

  @@short_words = %w(and, but, a, an, the, in, of, on, with, over, under, above, for, at)

  attr_reader :title

  def title=(title)
    titlewords = title.split
    titlewords.each { |word| word.capitalize! if !@@short_words.include?(word) }
    titlewords.first.capitalize!
    @title = titlewords.join(' ')
  end

end

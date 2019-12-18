class Library
  attr_reader :name, :authors

  def initialize(name, books = [])
    @name = name
    @authors = []
  end

  def add_author(author)
    @authors << author
  end

  def books
    @authors.flat_map do |author|
      author.books
    end
  end

  def publication_time_frame_for(author)
    max = author.books.map do |book|
      book.publication_year
    end.max

    min = author.books.map do |book|
      book.publication_year
    end.min

    time_frame = {start: min, end: max}
    time_frame
  end
end

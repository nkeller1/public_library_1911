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

  def max_year
    books.max_by do |book|
      book.publication_year
    end
  end

  def min_year
    books.min_by do |book|
      book.publication_year
    end
  end

  def publication_time_frame_for(author)
      @authors.reduce({}) do |acc, date|
      acc[:start] = max_year.publication_year
      acc[:end] = min_year.publication_year
      acc
    end
    # time_frame = {start: 1, end: 1}
  end
end

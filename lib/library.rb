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
end

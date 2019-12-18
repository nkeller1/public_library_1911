class Author
  attr_reader :first_name, :last_name

  def initialize(author_info)
    @first_name = author_info[:first_name]
    @last_name = author_info[:last_name]
    @books = []
  end

  def name
    "#{@first_name} #{@last_name}"
  end

  def write(title, publication_date)
    @books << Book.new({author_first_name: name.split(" ").first, author_last_name: name.split(" ").last, title: title, publication_date: publication_date})
  end

  def books
    @books.flatten
  end

end

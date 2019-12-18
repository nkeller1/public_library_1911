require 'minitest/autorun'
require 'minitest/pride'
require './lib/author'
require './lib/book'

class AuthorTest < Minitest::Test

  def test_it_exits
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    assert_instance_of Author, charlotte_bronte
  end

  def test_its_attributes
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    assert_equal "Charlotte", charlotte_bronte.first_name
    assert_equal "Bronte", charlotte_bronte.last_name
    assert_equal [], charlotte_bronte.books
  end

  def test_combine_name
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    assert_equal "Charlotte Bronte", charlotte_bronte.name
  end

  def test_write
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")

    # assert_equal Book, jane_eyre.class
    assert_equal "Jane Eyre", jane_eyre.first.title

    villette = charlotte_bronte.write("Villette", "1853")

    assert_equal [jane_eyre, villette], charlotte_bronte.books
  end


end

require('minitest/autorun')
require_relative('./OO_homeworkC')

class TestLibrary < MiniTest::Test

  def test_list_books
    miskatonic = Library.new([
          {
            title: "the jungle book",
            rental_details: {
              student_name: "Beth",
              date: "1 Feb 2017"
            }
          },
          {
            title: "the second jungle book",
            rental_details: 
              {
                student_name: "Beth",
                date: "15 Feb 2017"
              }
          }
        ])
    assert_equal([
          {
            title: "the jungle book",
            rental_details: {
              student_name: "Beth",
              date: "1 Feb 2017"
            }
          },
          {
            title: "the second jungle book",
            rental_details: 
              {
                student_name: "Beth",
                date: "15 Feb 2017"
              }
          }
        ],miskatonic.list_all_books)
  end

  def test_get_book_info__found
      miskatonic = Library.new([
            {
              title: "the jungle book",
              rental_details: {
                student_name: "Beth",
                date: "1 Feb 2017"
              }
            },
            {
              title: "the second jungle book",
              rental_details: 
                {
                  student_name: "Beth",
                  date: "15 Feb 2017"
                }
            }
          ])

      assert_equal(miskatonic.get_book_info("the second jungle book"),{title: "the second jungle book",
              rental_details: 
                {
                  student_name: "Beth",
                  date: "15 Feb 2017"
                }
            }
            )
  end

  def test_get_book_info__notfound
   miskatonic = Library.new([
             {
               title: "the jungle book",
               rental_details: {
                 student_name: "Beth",
                 date: "1 Feb 2017"
               }
             },
             {
               title: "the second jungle book",
               rental_details: 
                 {
                   student_name: "Beth",
                   date: "15 Feb 2017"
                 }
              }
      ]
    )
            
       assert_equal(miskatonic.get_book_info("Lagoon"),"book not found")
  end

  def test_get_book_rental_info__found
   miskatonic = Library.new([
             {
               title: "the jungle book",
               rental_details: {
                 student_name: "Beth",
                 date: "1 Feb 2017"
               }
             },
             {
               title: "the second jungle book",
               rental_details: 
                 {
                   student_name: "Beth",
                   date: "15 Feb 2017"
                 }
              }
      ]
    )
   assert_equal(miskatonic.get_book_rental_info("the jungle book"),{
                 student_name: "Beth",
                 date: "1 Feb 2017"
               })
  end

  def test_get_book_rental_info__notfound
    miskatonic = Library.new([
              {
                title: "the jungle book",
                rental_details: {
                  student_name: "Beth",
                  date: "1 Feb 2017"
                }
              },
              {
                title: "the second jungle book",
                rental_details: 
                  {
                    student_name: "Beth",
                    date: "15 Feb 2017"
                  }
               }
       ]
     )
    assert_equal(miskatonic.get_book_rental_info("Perdido Street Station"),"book not found")
  end

  def test_add_book_to_library
    miskatonic = Library.new([
              {
                title: "the jungle book",
                rental_details: {
                  student_name: "Beth",
                  date: "1 Feb 2017"
                }
              },
              {
                title: "the second jungle book",
                rental_details: 
                  {
                    student_name: "Beth",
                    date: "15 Feb 2017"
                  }
               }
       ]
     )
    newbook = {
      title: "John Dies at the End",
      rental_details: {
        student_name: "",
        date: ""
      }
    }

    miskatonic.add_new_book(newbook)

    assert_equal(miskatonic.get_book_info("John Dies at the End"),{
      title: "John Dies at the End",
      rental_details: {
        student_name: "",
        date: ""
      }
    }
  )
  end

  def test_change_rental_details__found
   miskatonic = Library.new([
             {
               title: "the jungle book",
               rental_details: {
                 student_name: "Beth",
                 date: "1 Feb 2017"
               }
             },
             {
               title: "the second jungle book",
               rental_details: 
                 {
                   student_name: "Beth",
                   date: "15 Feb 2017"
                 }
              }
      ]
    )
   miskatonic.change_rental_details("the jungle book", "Mohammad", "18 March 2017")

   assert_equal(miskatonic.get_book_rental_info("the jungle book"), {
                   student_name: "Mohammad",
                   date: "18 March 2017"
                 })
  end

  def test_change_rental_details__notfound
   miskatonic = Library.new([
             {
               title: "the jungle book",
               rental_details: {
                 student_name: "Beth",
                 date: "1 Feb 2017"
               }
             },
             {
               title: "the second jungle book",
               rental_details: 
                 {
                   student_name: "Beth",
                   date: "15 Feb 2017"
                 }
              }
      ]
    )
   miskatonic.change_rental_details("Thinking Fast and Slow", "Mohammad", "18 March 2017")

   assert_equal(miskatonic.get_book_rental_info("thinking fast and slow"), "book not found")
  end
end
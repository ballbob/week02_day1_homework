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
end

module WarmingUp
  module First
    def self.call
      puts 'Creating courses and lessons...'

      course = Course.new

      course.title = 'Ruby Course'
      course.description = "Time to dive deep into Ruby, the language 'designed for programmer happiness.' You'll cover object-oriented design, testing, and data structures – essential knowledge for learning other programming languages, too!"

      course.save

      lesson_title = 'How This Course Will Work'
      lesson_description = 'This course is all about teaching you Ruby, the language designed specifically for programmer happiness. What could possibly be better than that?! A task that takes dozens of lines of code to accomplish in Java or a hundred in C could take just a few in Ruby thanks to Ruby prepackaging so many useful functions into easy-to-use and convenient methods.'

      Course.first.lessons.create(
        title: lesson_title,
        description: lesson_description
      )

      course = Course.new

      course.title = 'Database Course'
      course.description = 'Databases are used to organize and capture large amounts of data, typically by inputting, storing, retrieving and managing the information. This course will focus on relational databases, which are widely used to store data and SQL, the language used to query the database.'

      course.save

      lessons_seeds = [
        {
          lesson_title: 'Databases',
          lesson_description: 'We’ve talked about the client-side and the server-side but how do we keep ahold of all our user’s data? Who remembers that your login password is CatLover1985 so you can sign into the website? The bottom layer of any web application is the database and it handles all the remembering for you (we’ll cover caching much later). It can be relatively simple, like an excel spreadsheet, or incredibly complex and split into many giant pieces like Facebook’s.'
        },
        {
          lesson_title: 'Databases And SQL',
          lesson_description: 'Data is the core of any good web app and a good working knowledge of SQL will take you a long way. That knowledge lets you not just understand what’s going on behind the scenes with your ORM tool (e.g. Active Record) but also to feel comfortable asking more complicated questions of your data. And that’s really what SQL is all about – asking questions of your database and occasionally also adding or changing things in it. Querying can be incredibly useful for you.'
        }
      ]

      lessons_seeds.each do |lesson|
        Course.second.lessons.create(
          title: lesson[:lesson_title],
          description: lesson[:lesson_description]
        )
      end

      puts 'Created courses and lessons'
    end
  end
end

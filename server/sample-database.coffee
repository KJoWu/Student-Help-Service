{ObjectID} = Mongo

@needsPopulate = ->
  @Users.find().count() is 0 and false

@populateInitialDatabase = ->
  # Create new Object IDs.
  [notetaker, receiver, englCourse, notes] = [1..4].map -> new ObjectID

  users = [
    # Note taking user.
    {
      _id: notetaker
      notetaker: yes
      courses: [englCourse]
      writing_for: [
        { course: englCourse, anonymous: no }
      ]
      # This is cached here for convenience.
      notes_due: [
        { course: englCourse, classOf: ['November', 6, 2014] }
      ]
    },

    # Note receiving user.
    {
      _id: receiver
      courses: [englCourse]
      notes_available: [notes]
      receiving_for: [
        { course: englCourse, anonymous: yes }
      ]
    }
  ].forEach((user) -> Users.insert(user))

  # Contains every classes that notes will be taken for.
  # Mostly meta information... the schedule is the most important part here!
  courses = [
    {
      _id: englCourse
      dept: 'ENGL'
      num: '122'
      section: 'Q02'
      type: 'Lecture'
      period: ['Fall', 2014]
      schedule: [
        {day: 'R', time: '18:30', biweekly: no}
      ]
    }
  ].forEach((course) -> Courses.insert(course))

  # Hyperlinked... I feel like a hybrid relational/document-based database
  # would be super nice here.
  notes = [
    {
      _id: notes
      notetaker: notetaker
      course: englCourse
      files: [
        {
          name: 'engl122-10-30.docx'
          file: Assets.getBinary 'sample-notes.docx'
          # MIME types for Microsoft Word files:
          # http://technet.microsoft.com/en-us/library/ee309278%28office.12%29.aspx
          type: 'application/vnd.openxmlformats-officedocument.wordprocessingml.document'
        }
      ]
      comments: [
        {
          author: notetaker
          markdown: "i was sick this week, these are my friends notes"
        }
      ]
    }
  ].forEach((notes) -> Notes.insert(notes))



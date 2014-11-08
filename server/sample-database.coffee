SAMPLE_DATABASE =
  # Users!
  users: [
    # Note taking user.
    {
      _id: 101
      notetaker: yes
      courses: [201]
      writing_for: [
        { course: 201, anonymous: no }
      ]
      # This is cached here for convenience.
      notes_due: [
        { course: 301, class: ['November', 6, 2014] }
      ]
    },

    # Note receiving user.
    {
      _id: 102
      courses: [201]
      notes_available: [301]
      receiving_for: [
        { course: 201, anonymous: yes }
      ]
    }
  ]

  # Contains every classes that notes will be taken for.
  # Mostly meta information... the schedule is the most important part here!
  courses: [
    {
      _id: 201
      dept: 'ENGL'
      num: '122'
      section: 'Q02'
      type: 'Lecture'
      period: ['Fall', 2014]
      schedule: [
        {day: 'R', time: '18:30', biweekly: no}
      ]
    }
  ]

  # Hyperlinked... I feel like a hybrid relational/document-based database
  # would be super nice here.
  notes: [
    {
      _id: 301
      creator: 101
      course: 201
      comments: [
        {
          author: 101
          markdown: "i was sick this week, these are my friends notes"
        }
      ]
    }
  ]





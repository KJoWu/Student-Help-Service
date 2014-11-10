# Generate Lorem Ipsum text.
Template.registerHelper 'lorem', ->
  'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tenetur cumque
   consectetur nam, officia eius adipisci earum modi beatae aliquid dolorem
   esse vel iusto deleniti, voluptatum omnis repellat ut excepturi
   consequatur.'

englCourse =
  _id: englCourse
  dept: 'ENGL'
  num: '122'
  section: 'Q02'
  type: 'Lecture'
  period: ['Fall', 2014]
  schedule: [
    {day: 'R', time: '18:30', biweekly: no}
  ]

Template.notesdue.helpers
  # Temporary thing...
  notes_due: [
    { course: englCourse, classOf: '2014-11-8'}
    { course: englCourse, classOf: '2014-11-6'}
  ]

# Moment Configuration
ISO8601_FORMAT = 'YYYY-MM-DD'
Template.notesbox.helpers
  relativeDate: (date) ->
    # For displaying "Today", "Yesterday", etc.
    moment(date, ISO8601_FORMAT).calendar()
  absoluteDate: (date) ->
    # Use month/date/year formatting.
    moment(date, ISO8601_FORMAT).format('LL')

Template.languagePicker.helpers
  'inEnglish': ->
    Session.get('language') is 'en-CA'

Template.languagePicker.events
  'click .language-toggle': () ->
    language =
      switch Session.get('language')
        when 'en-CA' then 'fr-CA'
        else 'en-CA'
    Session.set('language', language)
    false

  

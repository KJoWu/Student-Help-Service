Meteor.startup ->
  language = Session.get('language')
  if not language?
    # Detect language based on Accept-Language string
    detectedLanguage = window.navigator.userLanguage or window.navigator.language
    detectedLanguage = 'fr-CA'
    Session.set('language', detectedLanguage)

  Tracker.autorun ->
    language = Session.get('language')
    i18n.setLanguage language
    moment.locale language

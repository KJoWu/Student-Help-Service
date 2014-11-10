Meteor.startup ->
  # Detect language based on Accept-Language string
  #language = window.navigator.userLanguage or window.navigator.languages[0] or window.navigator.language
  #detectedLang = getLanguage language
  detectedLang = 'fr-CA'
  i18n.setLanguage detectedLang

  moment.locale detectedLang


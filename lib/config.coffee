# Configure the i18n package for most users.
i18n.setDefaultLanguage 'en-CA'

@getLanguage = (language) ->
  if language.match /fr/ then 'fr-CA'
  else 'en-CA'


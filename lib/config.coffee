# Configure the i18n package for most users.
i18n.setDefaultLanguage 'en_CA'

@getLanguage = (language) ->
  if language.match /fr/ then 'fr_CA'
  else 'en_CA'


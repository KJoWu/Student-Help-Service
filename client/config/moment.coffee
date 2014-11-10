# Moment Configuration
 
# Add the French locale:
moment.locale 'fr',
  months: "janvier_février_mars_avril_mai_juin_juillet_août_septembre_octobre_novembre_décembre".split("_")
  monthsShort: "janv._févr._mars_avr._mai_juin_juil._août_sept._oct._nov._déc.".split("_")
  weekdays: "dimanche_lundi_mardi_mercredi_jeudi_vendredi_samedi".split("_")
  weekdaysShort: "dim._lun._mar._mer._jeu._ven._sam.".split("_")
  weekdaysMin: "Di_Lu_Ma_Me_Je_Ve_Sa".split("_")
  longDateFormat:
    LT : "HH:mm"
    L : "DD/MM/YYYY"
    LL : "D MMMM YYYY"
    LLL : "D MMMM YYYY LT"
    LLLL : "dddd D MMMM YYYY LT"
  calendar:
    sameDay: "[Aujourd'hui]"
    nextDay: '[Demain]'
    nextWeek: 'dddd'
    lastDay: '[Hier]'
    lastWeek: 'dddd [dernier] LT'
    sameElse: 'L'
  relativeTime:
    future : "dans %s"
    past : "il y a %s"
    s : "quelques secondes"
    m : "une minute"
    mm : "%d minutes"
    h : "une heure"
    hh : "%d heures"
    d : "un jour"
    dd : "%d jours"
    M : "un mois"
    MM : "%d mois"
    y : "une année"
    yy : "%d années"
  ordinal: (number) ->
    number + (if number is 1 then 'er' else 'ème')
  week:
    dow: 1, # Monday is the first day of the week.
    doy: 4  # The week that contains Jan 4th is the first week of the year.

# Slight modification for the English locale:
# Discard granularity for calendar dates
moment.locale 'en',
  calendar:
    lastDay : '[Yesterday]',
    sameDay : '[Today]',
    nextDay : '[Tomorrow]',
    lastWeek : '[Last] dddd',
    nextWeek : 'dddd',
    sameElse : ''

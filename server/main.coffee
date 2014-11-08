Meteor.startup ->
  @populateInitialDatabase() if @needsPopulate()

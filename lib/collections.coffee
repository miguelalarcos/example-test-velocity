items = @Items = new Meteor.Collection "Mis items"
if Meteor.isServer
  items.remove({})
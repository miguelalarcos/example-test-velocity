match = (obj, range)->
  if not range.$in
    if obj == range
      return true
    else
      return false
  else if obj in range.$in
    return true
  else
    return false

MochaWeb.testOnly ->
  describe 'click en red', ->
    it "should create a red and shown in the list", ->
      Meteor.flush()
      count =  $('div.container > div').length
      $('.red').click()
      chai.assert.equal count + 1,  $('div.container > div').length
      chai.assert match('red', {$in:['red', 'green']})
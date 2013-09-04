chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'responses', ->
  beforeEach ->
    @robot =
      respond: sinon.spy()

    require('../src/responses')(@robot)

  it 'registers a respond listener with GIVE', ->
    expect(@robot.respond).to.have.been.calledWith(/GIVE ME MANA/)
    
  it 'registers a respond listender with GIFF', ->
    expect(@robot.respond).to.have.been.calledWith(/GIFF ME MANA/)

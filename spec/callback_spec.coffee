assert = require('chai').assert
Alarm = require('../src/ad2usb')
Socket = require('./socket')

describe 'Callback', ->
  alarm = null
  socket = null

  beforeEach ->
    socket = new Socket()
    alarm = new Alarm(socket)

  it 'should callback on sent response', (done) ->
    socket.data.push '!Sending..done'
    alarm.send '12341', -> done()


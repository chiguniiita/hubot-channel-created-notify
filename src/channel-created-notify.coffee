module.exports = (robot) ->

  slack = robot.adapter.client
  slack.on 'raw_message', (message) ->
    robot.logger.error "1"
    if message?.type == 'channel_created'
      return if typeof robot?.send isnt 'function'
      robot.logger.error "2"
      robot.send {room: "#general"}, "<##{message.channel.id}>
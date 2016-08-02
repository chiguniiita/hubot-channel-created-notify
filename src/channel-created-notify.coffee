module.exports = (robot) ->

  slack = robot.adapter.client
  slack.on 'raw_message', (message) ->
    if message?.type == 'channel_created'
      return if typeof robot?.send isnt 'function'
      robot.send {room: "new_channels"}, "<##{message.channel.id}> 
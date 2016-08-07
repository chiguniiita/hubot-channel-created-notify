module.exports = (robot) ->
  robot.adapter.client?.on? 'raw_message', (msg) ->
    if msg?.type == 'channel_created'
      robot.messageRoom "#general", "New channel: <##{msg.channel.id}|#{msg.channel.name}>"
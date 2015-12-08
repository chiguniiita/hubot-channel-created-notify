# Description
#   A hubot script for slack channel created notification.
#
# Author:
#   chiguniiita

module.exports = (robot) ->
  robot.adapter.client?.on? 'raw_message', (msg) ->
    if msg?.type == 'channel_created'
      return if typeof robot?.send isnt 'function'
      robot.send {room: "general"}, "New channel <##{msg.channel.id}> created"

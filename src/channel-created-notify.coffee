# Description
#   A hubot script for slack channel created notification.
#
# Author:
#   chiguniiita

module.exports = (robot) ->
  robot.adapter.client?.on? 'raw_message', (msg) ->
    if msg?.type == 'channel_created'
      robot.logger.error "aaaa"

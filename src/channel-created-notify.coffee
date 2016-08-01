# Description
#   A hubot script for slack channel created notification.
#
# Author:
#   chiguniiita

module.exports = (robot) ->
  robot.adapter.client?.on? 'raw_message', (msg) ->
    robot.logger.error msg.type

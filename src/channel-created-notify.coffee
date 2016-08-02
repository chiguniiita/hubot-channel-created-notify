module.exports = (robot) ->
  robot.adapter.client?.on? 'raw_message', (msg) ->
    if msg?.type == "pong"
      robot.logger.error "pong"
    else
      robot.logger.error "else"
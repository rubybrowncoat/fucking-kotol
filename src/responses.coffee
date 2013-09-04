# Description:
#   Allows Hubot to respond like KOTOL!
#
# Dependencies:
#   None
#
# Configuration:
#  None
#
# Commands
#  give/giff me mana - duh.
#
# Author:
#  Vincent Paca

module.exports = (robot) ->
  mana_responses = [
    "Come. Come close to me!",
    "It's on COOLDOWN. COOLDOWN. COOLDOWN!"
  ]

  robot.respond /(GIVE|GIFF) ME MANA$/i, (msg) ->
    msg.reply msg.random mana_responses

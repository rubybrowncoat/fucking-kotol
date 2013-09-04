module.exports = (robot) ->
  mana_responses = [
    "Come. Come close to me!",
    "It's on COOLDOWN. COOLDOWN. COOLDOWN!"
  ]

  robot.respond /(GIVE|GIFF) ME MANA$/i, (msg) ->
    msg.reply msg.random mana_responses

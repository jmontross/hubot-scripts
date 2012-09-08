# Description:
# Display a random tweet from twitter about a subject
#
# Dependencies:
# None
#
# Configuration:
# None
#
# Commands:
# hubot <keyword> tweet - Returns a link to a tweet about <keyword>
#
# Author:
# atmos

module.exports = (robot) ->
  robot.respond /twitterup?/ ->    
    msg.http('https://api.twitter.com/1/statuses/user_timeline.json?screen_name=140proof')    
    .get() (err, res, body) ->
        if res.status == 200          
          msg.send "twitter is up!"
        else
          msg.reply "maybe it's down..."
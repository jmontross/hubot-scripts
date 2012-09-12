# Description:
# Display a status of twitter based on querying the twitterapi
#
# Dependencies:
# None
#
# Configuration:
# None
#
# Commands:
# twitterup?
#
# Author:
# jmontross 

module.exports = (robot) ->
  robot.respond /twitterup?/, (msg) ->
    msg.http('http://api.twitter.com/1/statuses/user_timeline.json?screen_name=twitterapi')    
    .get() (err, res, body) ->
        if res.statusCode == 200          
          msg.send "twitter is up!"
        else
          msg.reply "maybe it's down..."
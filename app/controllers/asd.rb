while (true)

   retweet_keyword = '#rttowin'
   # keyword that we want to search
   client.search(retweet_keyword).take(2).each do |tweet|
     # searching for all the tweets that has the "#rttowin"
     unless (!tweet.retweeted_status? && !tweet.in_reply_to_status_id? && !previously_retweeted.include?(tweet.id))
       #checking all the conditionals (if tweet has been retweeted, is not an original tweet)
       client.retweet(tweet.id)
       # we are retweeting the tweet
       client.follow(tweet.user.screen_name)
       # we are following the tweet's original owner/creator
       previously_retweeted.push(tweet.id)
       # pushing the tweet's id to an array so we don't duplicate the tweet
       puts "Retweet: #{tweet.id}, followed: #{tweet.user.screen_name}, #{Time.now}"
       # printing to the screen what has been executed
     end
   end
   sleep(720); # the program goes into sleep mode for twelve minutes 
 end

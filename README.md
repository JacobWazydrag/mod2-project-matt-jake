# Twitter Friendship Analytics


Our application will give Twitter users a more explicit tool for account-discovery than Twitter's native recommendation algorithm.

The backbone of the product will be the results of analyzing a many-to-many relationship between users and users through 'friendships'.  A friendship consists of a follower_id key that links to a user and a friend_id key that links to another user.  This will just simulate Twitter's basic relationship of following an account.


We have a few models in mind to represent analyses of the basic relationship that might be useful or interesting.

* A second-order list of friends of the initial users friends, ranked by the number of friends who subsequently follow those users.  This will show who the most popular accounts are *among accounts already followed by the person*  This kind of tool would allow one to more quickly develop a network graph in a particular field or area of interest.

* A second-order list of accounts followed by the user's friends, who also follow the user.  This would show accounts that are known to one's followers, but may not be known to oneself.

* A third order list of accounts in the friend-of-friend teir who are the most referred to by the third order list.

And so on.
After we have the initial project up and going, it should be possible to make arbitrary categories for analysis, and to link the outcomes of any one of these from the User page, so that each user would have access to different pages with recommendations for accounts to follow, and each of those pages would show explicitly the relationships that populated them.

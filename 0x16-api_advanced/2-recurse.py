#!/usr/bin/python3

import praw

def recurse(subreddit, hot_list=[]):
    reddit = praw.Reddit(client_id='YOUR_CLIENT_ID',
                         client_secret='YOUR_CLIENT_SECRET',
                         user_agent='YOUR_USER_AGENT')

    try:
        subreddit_obj = reddit.subreddit(subreddit)
        for submission in subreddit_obj.hot(limit=None):
            hot_list.append(submission.title)
        return hot_list
    except praw.exceptions.InvalidSubreddit:
        return None

# Example usage
subreddit = 'python'
hot_articles = recurse(subreddit)
if hot_articles is not None:
    for title in hot_articles:
        print(title)
else:
    print("Invalid subreddit.")

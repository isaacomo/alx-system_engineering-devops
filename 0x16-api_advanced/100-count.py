#!/usr/bin/python3

import praw
from collections import Counter

def count_words(subreddit, word_list, count_dict=None):
    if count_dict is None:
        count_dict = Counter()

    reddit = praw.Reddit(client_id='YOUR_CLIENT_ID',
                         client_secret='YOUR_CLIENT_SECRET',
                         user_agent='YOUR_USER_AGENT')

    try:
        subreddit_obj = reddit.subreddit(subreddit)
        for submission in subreddit_obj.hot(limit=None):
            title_words = submission.title.lower().split()
            for word in word_list:
                if word.lower() in title_words:
                    count_dict[word.lower()] += title_words.count(word.lower())

        if len(count_dict) > 0:
            sorted_counts = sorted(count_dict.items(), key=lambda x: (-x[1], x[0]))
            for word, count in sorted_counts:
                print(f"{word}: {count}")
        else:
            print("No matches found.")

    except praw.exceptions.InvalidSubreddit:
        print("Invalid subreddit.")

# Example usage
subreddit = 'python'
keywords = ['python', 'java', 'javascript']
count_words(subreddit, keywords)

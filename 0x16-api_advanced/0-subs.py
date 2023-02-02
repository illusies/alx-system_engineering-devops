#!/usr/bin/python3
"""
A function that queries the Reddit API and returns the number of subscribers
(not active users, total subscribers) for a given subreddit. If an invalid
subreddit is given, the function should return 0.
"""

import requests
import sys

def number_of_subscribers(subreddit):
    """
    A function that returns the number of subscribers for a given subreddit
    """
    headers = {"User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64)\
    AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.102 Safari/537.36"}
    info = requests.get(
        'http://www.reddit.com/r/{}/about.json'.format(subreddit),
        headers=headers).json()
    if info.get('kind') != 't5':
        return 0
    else:
        data = info.get('data')
        count = data.get('subscribers')
        return count


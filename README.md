# git-spider
Simple bash script I wrote to crawl a list of host names for exposed .git repositories.

Will take in a list of hostnames, targets.txt, and write wget results to spider.out.

Grep spider.out for "Remote file exists" for hits.

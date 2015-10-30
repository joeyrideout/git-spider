# git-spider
Simple bash script I wrote to crawl a list of host names for exposed .git repositories.

Will take in a list of hostnames, targets.txt, and write wget results to spider.out.

Example usage:
```
echo "mysite.example.com" > targets.txt
chmod +x spider.sh
./spider.sh

cat spider.out | grep "Remote file exists"
```

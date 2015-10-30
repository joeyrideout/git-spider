while read p; do
  wget https://$p/.git/HEAD --no-check-certificate --spider --tries=2 --timeout=10 > spider.out 2> spider.out
done < targets.txt

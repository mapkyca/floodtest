# River height scripts

This is a collection of quick utility scripts designed to query the environment agency river sensor websites.

They are primarily for my own use (to e.g. send me email alerts if my root home is flooded), but if you live in the 
UK, you might find a use for them too.

## Email alerts

Assumes bsd-mailx

./isflooded http://url.of.sensor/ | grep -v 'No' | mail -E -s "Is xxxx flooded?" somebody@example.com

## Author

* Marcus Povey <https://www.marcus-povey.co.uk>

.PHONY: deploy

deploy:
	rsync -avr --exclude-from='exclude.txt' --chown=www-data:www-data --checksum --delete -e ssh ./ AkashaR:neophilus

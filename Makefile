.PHONY: deploy

deploy:
	rsync -avr --exclude-from='exclude.txt' --chown=http:www --checksum --delete -e ssh ./ AkashaR:neophilus

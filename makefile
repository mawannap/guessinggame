all: README.md

README.md: guessinggame.sh makefile
	echo 'Peer Review exercise for Coursera Unix Workbench course' >> README.md
	echo "" >> README.md
	echo -n "This file was created on " >> README.md
	date >> README.md
	echo "" >> README.md
	echo -n "Number of lines in guessinggame.sh is " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md

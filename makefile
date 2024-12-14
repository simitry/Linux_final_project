READ = README.md
GAME = guessinggame.sh

$(READ): $(GAME)
	echo "#TITLE OF THE PROJECT" > $(READ)
	echo "**Guessing game**" >> $(READ)
	echo "************************************************************" >> $(READ)
	echo "**THIS FILE WAS CREATED ON $$(date)**" >> $(READ)
	echo "**This guessing game project code contains $$(wc -l < $(GAME)) lines**" >> $(READ)

clean:
	rm -f $(READ)


README.md: guessinggame.sh
	echo "# Projet Guessing Game" > README.md
	echo "" >> README.md
	echo "## Date et heure d'exécution" >> README.md
	echo "\`\`\`" >> README.md
	date >> README.md
	echo "\`\`\`" >> README.md
	echo "" >> README.md
	echo "## Nombre de lignes dans guessinggame.sh" >> README.md
	echo "\`\`\`" >> README.md
	wc -l < guessinggame.sh >> README.md
	echo "\`\`\`" >> README.md


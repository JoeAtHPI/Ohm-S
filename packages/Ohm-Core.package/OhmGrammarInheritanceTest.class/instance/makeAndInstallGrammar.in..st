utility
makeAndInstallGrammar: grammarDefinition in: packageName

	SystemChangeNotifier uniqueInstance doSilently: [
		packageName 
			ifNotNil: [ ^ OhmGrammar 
							makeAndInstallGrammar: grammarDefinition 
							in: packageName ]
			ifNil: [ ^ self makeGrammar: grammarDefinition ]].
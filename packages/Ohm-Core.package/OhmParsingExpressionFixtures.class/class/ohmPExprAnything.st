fixtures
ohmPExprAnything

	 ^ '{ "grammar" : "M { }",
        	"match" : [				{ "input" : 5,    "rule" : "_", "expect" : true}, 
                  	  				{ "input" : null, "rule" : "_", "expect" : true} ],
        	"matchContents" : [		{ "input" : "5",  "rule" : "_", "expect" : true},
                						{ "input" : "", "rule" :   "_", "expect" : false} ],
        	"matchListStream" : [	{"input" : ["123"],    "rule" : "_", "expect" : true },
 								{"input" : ["123", 4], "rule" : "_", "expect" : false},
								{"input" : [],         "rule" : "_", "expect" : false} ],
		"matchInterval" : [		{"input" : "123",    "rule" : "_", "expectInterval" : [[1,1]] },
								{"input" : ["123", 4], "rule" : "_", "expectInterval" : [[1,1]] } ],
		"matchTree" : [			{"input" : "1", 		"expectedTree" : {"ruleName" : "ruleOne", "children" :  [ {"ruleName" : "_terminal", "children" : [ "1" ]}  ] } },
								{"input" : ["123"], 	"expectedTree" : {"ruleName" : "ruleOne", "children" :  [ {"ruleName" : "_terminal", "children" : [ "123" ] } ] }  } ]}' 

	
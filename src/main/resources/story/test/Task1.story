Scenario: sign up user
Meta:
	@skip
Given I am on the main application page
When I click on an element by the xpath '//a[@data-analytics-event='clickedSignupHeaderButton']'
When I enter '<userEmail>' in a field by the xpath '//input[@id='email']'
When I click on an element by the xpath '//input[@id='signup']'
When I enter '<userFullName>' in a field by the xpath '//input[@id='name']'
When I enter '<userPassword>' in a field by the xpath '//input[@id='password']'
When I click on an element by the xpath '//input[@id='signup']'
Examples:
|userEmail					 	|userFullName							|userPassword	|
|vconsuelau@mlnd8834.gq 	|#{generate(regexify '[a-z]{5}[A-Z]{5}')}|qweaz492		|	
|tibrahim.diarra.w@1rererer.ru|Clara Honny	|qweaz493		|

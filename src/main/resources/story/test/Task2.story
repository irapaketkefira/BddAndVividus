Meta:
	@skip

Scenario: sign up user
Given I am on the main application page
When I click on an element by the xpath '//a[@class = 'btn btn-sm btn-link text-white']'
When I enter 'zuikinst@gmail.com' in a field by the xpath '//input[@id='user']'
When I enter 'qweaz491' in a field by the xpath '//input[@id='password']'
When I click on an element by the xpath '//input[@class="button account-button button-green btn btn-success"]'


Scenario: Welcome board close
When I find <= '1' elements by By.xpath(//div[@class='first-board-wrapper']) and for each element do
|step																			|
|When I click on an element by the xpath ' //div[@class='first-board-navigation']/span[5]'|
|When I click on an element by the xpath '//button[@data-test-id='continue-button']'|

Scenario: Verify user profile
When I click on an element by the xpath '//button[@data-test-id='header-member-menu-button']'
When I click on an element by the xpath '//a[@data-test-id='header-member-menu-profile']'
Then the text 'Irina Zuikevich' exists
And the text 'zuikinst@gmail.com' exists

Scenario: Open boards page
Given I am on a page with the URL 'https://trello.com/irinazuikevich/boards'
When I establish baseline with `boardsPage`

Scenario: Open trello templates page
Given I am on a page with the URL 'https://trello.com/templates'
When I establish baseline with `templatePage` 



Meta: 
Lifecycle:
Examples:
{transformer=FROM_LANDSCAPE}	
|boardPage     |#{generate(regexify '[a-z]{5}[A-Z]{5}')}|
|templatePage  |#{generate(regexify '[a-z]{5}[A-Z]{5}')} |


Scenario: Precondition to task2
Given I am on the main application page
When I click on an element by the xpath '//*[@class="btn btn-sm btn-link text-white"]'
When I login as a registered user

Scenario: Welcome board close
Meta:
	@skip
When I find <= '1' elements by By.xpath(//div[@class='first-board-wrapper']) and for each element do
|step																			|
|When I click on an element by the xpath ' //div[@class='first-board-navigation']/span[5]'|
|When I click on an element by the xpath '//button[@data-test-id='continue-button']'|

Scenario: Verify user profile
Meta:
	@skip
When I click on an element by the xpath '//button[@data-test-id='header-member-menu-button']'
When I click on an element by the xpath '//a[@data-test-id='header-member-menu-profile']'
Then the text 'Irina Zuikevich' exists
And the text 'zuikinst@gmail.com' exists


Scenario: Boards page visual check
Meta:
	@skip
Given I am on a page with the URL 'https://trello.com/irinazuikevich/boards'
When I establish baseline with `<boardPage>`
When I compare_against baseline with `<boardPage>`

Scenario: Templates page visual check
Meta:
	@skip
Given I am on a page with the URL 'https://trello.com/templates'
When I establish baseline with `<templatesPage>`
When I compare againt baseline with `templatesPage>`




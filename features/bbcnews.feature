Feature: Async testing
    As a user,
    I want to wait for posts to come in
    In order to test async stuff

    @max_wait_100
    Scenario: Waiting for a post
        Given I visit the website
        When I receive a post
        Then I see the post content


    Scenario: Waiting for 2 post
        Given I visit the website
        When I receive 2 post
        Then I see 2 posts

@hover
    Scenario: check the hover state
     Given I visit the website
     When I hover the box
     Then I expect the change in color

@mq
    Scenario: Media Query Large Viewport
        Given I visit the website
        When I resize the browser window to "720"
        Then I expect the following element to be visible "#box2"

    Scenario: Media Query Small Viewport
        Given I visit the website
        When I resize the browser window to "319"
        Then I expect the following element not to be visible "#box2"

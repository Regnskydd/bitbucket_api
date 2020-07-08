#!/bin/bash
# Define constants
JENKINS_USER = "PLACEHOLDER"
API_TOKEN = "PLACEHOLDER"
BITBUCKET_URL = "PLACEHOLDER"
# TODO: Add some method to get bitbucket URL from jenkins/jenkinsfile
# TODO: Add some method to get user from jenkins/jenkinsfile

# Helper function to POST payloads via curl command
function poster () {
	curl -v -i -k -X PUT \
	-H "Authorization:Bearer $API_TOKEN" \
	-H "Content-Type:application/json" \
	-d "$ARG1" \
	$BITBUCKET_URL
}

#/rest/api/1.0/projects/{projectKey}/repos/{repositorySlug}/pull-requests/{pullRequestId}/participants/{userSlug} CHECK THIS TOMMORW
# Mark a pull-request as approved
function pullrequest_approved () {
	#Is the best method to construct the JSON-query in here and pass it as a payload to the builder or
	#is it possible (or even wanted?) to pass a string to a "JSON-builder helper" and then pass it to the poster helper?
	#Is it even possible to create a generic JSON-builder since all JSON message will be so different?
	
	 "user": {
        "name": "jcitizen",
        "emailAddress": "jane@example.com",
        "id": 101,
        "displayName": "Jane Citizen",
        "active": true,
        "slug": "jcitizen",
        "type": "NORMAL"
    },
    "role": "REVIEWER",
    "approved": true,
    "status": "APPROVED"
	
	template='{}'
	
	local payload = "bla"
	poster payload
}

# Mark a pull-request as unapproved
function pullrequest_unapproved () {
	
}

# Mark a pull-request as needs work
function pullrequest_needs_work () {

}

#TODO: Investigate what functions are needed
function build_successful () {
	
}

function build_failed () {

}
#!/bin/bash
# Define constants
# TODO: Add some method to get bitbucket URL from jenkins/jenkinsfile
# TODO: Add some method to get user from jenkins/jenkinsfile

# Helper function to POST payloads via curl command
# TODO: Check the exact syntax to post commands
function poster () {
	curl -i -X POST \
	-H "Authorization:Bearer MDg4MzA4NTk/TlMSS6Ea" \
	-H "X-Atlassian-Token:no-check" \
	-H "Content-Type:application/json" \
	-d $ARG1 \
	$BITBUCKET_URL
}

# Mark a pull-request as approved
function approve_pullrequest () {
	#Is the best method to construct the JSON-query in here and pass it as a payload to the builder or
	#is it possible (or even wanted?) to pass a string to a "JSON-builder helper" and then pass it to the poster helper?
	#Is it even possible to create a generic JSON-builder since all JSON message will be so different?
	
	local payload = "bla"
	poster payload
}

# Mark a pull-request as unapproved
function unapprove_pullrequest () {
	
}

# Mark a pull-request as needs work
function ??_pullrequest () {

}

#TODO: Investigate what functions are needed

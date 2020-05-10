default: bootstrap
	
test: 	
	docker-compose run --rm tests

bootstrap:
	#eval $(curl -s -H "Authorization: Bearer ${BUILDKITE_AGENT_TOKEN}" "https://api.buildkite.com/v2/organizations/${BUILDKITE_ORGANIZATION_SLUG}/pipelines/${BUILDKITE_PIPELINE_SLUG}/builds/${BUILDKITE_BUILD_ID}/jobs/${BUILDKITE_JOB}/env.txt" | sed 's/^/export /')
	
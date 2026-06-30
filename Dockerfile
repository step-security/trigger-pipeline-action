FROM alpine

LABEL repository="https://github.com/step-security/trigger-pipeline-action"
LABEL homepage="https://github.com/step-security/trigger-pipeline-action"
LABEL maintainer="StepSecurity Support <support@stepsecurity.io>"

LABEL com.github.actions.name="Trigger Buildkite Pipeline"
LABEL com.github.actions.description="A GitHub Action for triggering a build on a Buildkite pipeline."
LABEL com.github.actions.icon="play"
LABEL com.github.actions.color="green"

RUN apk add --no-cache bash curl jq

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]

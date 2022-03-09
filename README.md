# An [node.js](https://github.com/nodejs/node) + docker image built to run in Azure Pipelines

## Why

Despite there is docker multistage build it's not quite easy
to use it's caching mechanism. Thus, this image has been built
to speed up build times and save some space in container registry.

## Example

```yaml
# azure-pipelines.yml in your db migrations repo
trigger: none

container: ghcr.io/arkadiuminc/node:main

steps:
- script: yarn install 
- script: yarn build
- script: yarn install --production
- script: docker build . -t my-api
```

## Arkadium

[We are hiring!](https://apply.workable.com/arkadium-1/)

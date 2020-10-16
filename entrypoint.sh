#!/usr/bin/env bash
set -e

#npm install react-scripts@3.3.0 -g
#npm install --only=prod
#npm install typescript
#
#source env-${NODIS_DEPLOY_ENV}.sh
#npm run build
#
#tar czvf ${NODIS_ARTIFACT_FILENAME} build

touch ${NODIS_ARTIFACT_FILENAME}

aws --debug s3 ls "s3://${NODIS_ARTIFACT_BUCKET}/${NODIS_PROJECT_NAME}/"

aws --debug s3 cp ${NODIS_ARTIFACT_FILENAME} "s3://${NODIS_ARTIFACT_BUCKET}/${NODIS_PROJECT_NAME}/"
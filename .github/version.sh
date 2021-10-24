#!/bin/bash

# sh ./version.sh bump => bumping version with standardVersion and will use patch as relaseVersion
# sh ./version.sh bump major => bumping version with standardVersion and will use major as relaseVersion

VERSION=$(cat package.json | grep version | head -1 | awk -F: '{ print $2 }' | sed 's/[ ",]//g')
PACKAGE_NAME=$(cat package.json | grep name | head -1 | awk -F: '{ print $2 }' | sed 's/[ ",]//g')

PREVIOUS_VERSION=$(npm view $PACKAGE_NAME version)

BUMP=$1
PRE_RELEASE=$2

if [ -z "$PRE_RELEASE" ]; then
  PRE_RELEASE="patch"
fi

if [ -z "$BUMP" ]; then
  echo 'No BUMP found'
  exit 0
fi

if [ "$VERSION" == "$PREVIOUS_VERSION" ]; then
  yarn run release:$PRE_RELEASE
  VERSION=$(cat package.json | grep version | head -1 | awk -F: '{ print $2 }' | sed 's/[ ",]//g')

  echo "Release version: $VERSION, previous version: $PREVIOUS_VERSION with preRelease $PRE_RELEASE"
else
  yarn run release
fi

echo "VERSION=$VERSION" >>$GITHUB_ENV

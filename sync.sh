#!/usr/bin/env bash
bundle exec middleman build --clean
aws s3 sync build s3://docs.invitepeople.com --acl public-read --exclude '*.DS_Store'
aws cloudfront create-invalidation --distribution-id E2L3HGS59CK3R0 --paths /index.html
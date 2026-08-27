# CI/CD Pipeline Notes

A few notes from today's lab session.

## Key Concepts
- **Continuous Integration**: Automatically build and test on every push.
- **Continuous Delivery**: Deploy to staging after tests pass.
- **Continuous Deployment**: Automatically deploy to production.

## Common Tools
- Jenkins
- GitHub Actions
- GitLab CI
- ArgoCD for GitOps

## Quick Tips
1. Keep pipelines fast.
2. Use caching for dependencies.
3. Fail fast with clear logs.
4. Version your pipeline config.

## Example GitHub Actions Workflow
```yaml
name: CI
on: [push]
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - run: make test
```

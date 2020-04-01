# docker-multiruby

## Intro

This base image use Alpine Linux, and includes multiple versions of Ruby with
`rbenv` to switch between them. The list of Ruby versions is hardcoded in the
Dockerfile.

## Downstream users

This base image is currently used by these projects for their tests in CI:-
* `routemaster-drain`

## Ruby versions

The intention going foward is to include the last two releases in every
supported major/minor series of Ruby.

# Versions

Originally this project used Docker Hub's autobuild feature, and all changes
merged to master would build and overwrite the `latest` tag.

It now uses CircleCI to make builds. To avoid breaking existing project, the
builds now will only create a container with a specific version tag and
`latest` will stay pointing at the last old version before Circle CI was
introduced.

The versioning is calendar based, e.g. `2019.05.10` since this project will
mostly change with security updates only, hence semantic versioning would not
be very useful.

New projects should avoid using `latest`.

# Modifying

CircleCI will build new containers automatically. Remember to update the
`VERSION` file and the `CHANGELOG.md` file.

# Clamav docker image

This docker image is designed to be used by kubernetes pods in chorus cluster.

## How to create a new version?

* Edit / Update `Dockerfile`

* Build the new image with the command:

* Ensure that `0.2.0` is a version greater than the current version

```bash
$ docker build . -t rockcontent/chorus/clamav:0.2.0
```

## Create a new release

After validating the new image, do the following:

* Update the VERSION file, related to the image you've updated

* Push the new image to docker hub

* You must be logged in docker hub, `docker login`

```bash
$ docker push rockcontent/chorus/clamav:0.2.0
```

* Commit both VERSION and Dockerfile

* Update the version in `docker-compose.yml` file that is using the image

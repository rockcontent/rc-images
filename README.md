# RC Images

This repository contains the docker images used in RC1 and RC2.

## How to create a new version?

* Copy the Dockerfile from the image you are updating to the root of the application, eg:

```bash
~/rock/rc2 $ cp ~/rock/rc-images/rc2/Dockerfile .
```

* Edit / Update the copied `Dockerfile`

* Build the new image with the command:

* Ensure that `0.8.0` is a version greater than the current version, in rc2-images/rc2/VERSION file, otherwise you will replace your existing image

```bash
$ docker build . --build-arg USER_ID=$UID --rm -t rockcontent/rc2:0.8.0
```

* Update the version of the image in rc2/docker-compose.yml

* Test the new image

## Create a new release

After the validation of the new image, do the following:

* Update the VERSION file, related to the image you've updated

* Push the new image to docker hub

* You must be logged in docker hub, `docker login`

```bash
$ docker push rockcontent/rc2:0.8.0
```

* Commit both VERSION and Dockerfile changes in this repository

* Update the version in `docker-compose.yml` file that is using the image
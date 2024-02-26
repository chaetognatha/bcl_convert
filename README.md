# Dockerfile for bcl-convert

This is a definition file for the latest version of
bcl-convert.

Illumina doesnt provide builds of bcl-convert for debian
based OSes so the most convenient way to use it is with
a docker or singularity.

## Building the Docker image

To build the Docker image, navigate to the directory containing the Dockerfile and run the following command:

```bash
# clone this repo and navigate into the main directory
docker build -t bcl-convert-docker .
```

## Getting the container from docker hub

Instead of building you may want to get the container
from the dockerhub repo:

```bash
docker run chaetognatha/bcl-convert:latest
```


## Running the Docker image

To run the docker image use the following:
```bash
docker run -v /local/path:/docker/path -it bcl-convert --help
```

## Converting to Singularity

If you prefer to use a Singularity container:

```bash
sudo singularity build bcl-convert.sif docker://chaetognatha/bcl-convert:latest
```
IMPORTANT: converting to singularity means you have to specify
a place where bcl-convert can keep logs.


First time only!

```bash
mkdir -p /tmp/bcl_convert
```
Run like this:

```bash
singularity run -B /tmp/bcl_convert:/var/log/bcl-convert bcl-convert.sif 
```

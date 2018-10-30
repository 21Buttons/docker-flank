# Flank Docker Image

A docker image for [Flank][flank]

  [flank]: https://github.com/TestArmada/flank

## How to use

```sh
docker run \
  -v PATH_TO_YOUR_GCLOUD_KEY:/etc/flank/gcloud-key.json:ro \
  -v PATH_TO_YOUR_PROJECT:/application:ro \
  21buttons/flank
```

You must have the file `flank.yml` at the root of `PATH_TO_YOUR_PROJECT`.

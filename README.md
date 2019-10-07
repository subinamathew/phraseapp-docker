# Phraseapp docker

Run [phraseapp cli][cli] in a docker container. This has a script to use the latest phraseapp cli

## Usage

Initialize and configure your project:

    docker run --rm -ti -v $PWD:/code -w /code subinamathew/phraseapp init

Pull translations from phraseapp to your project:

    docker run --rm -ti -v $PWD:/code -w /code subinamathew/phraseapp pull

See more examples on the [CLI readme][readme].

[cli]: https://phraseapp.com/cli
[readme]: https://github.com/phrase/phraseapp-client/blob/master/README.md

Originally forked from https://github.com/francois2metz/phraseapp-docker/blob/master/README.md

It sets the environment variable on the fly as to get the latest version with jq using curl.

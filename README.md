# About

This is a small set of scripts to help you run
[Ping Federate](https://www.pingidentity.com/en/platform/single-sign-on/sso-overview.html)
in a container.

# Getting Started

`pf-install.sh` has been modifed to remove user input.

Execute `script/build` to create the `ping` Docker image (This step will also result in a duplicate tag, `ping-build`,
which can be used to return to this point later if needed).

Execute `script/run` once it is finished to run the ping image in a new container.

It will take a few seconds to start (you can use `docker logs $(docker ps -q -f ancestor=ping)` to check the logs).

Navigate to `https://127.0.0.1:9999/pingfederate/app` to finish setup (enter your license).

Once you are done and PF is configured run `script/update` in a new terminal (while the ping container is still up)
to save the changes to a new docker image.

You can now use `script/run` as needed to run the confingured image.

<p align="center">
    <a href="https://nordvpn.com/"><img src="https://github.com/bubuntux/nordvpn/raw/master/.img/NordVpn_logo.png"/></a>
    </br>
    <a href="https://github.com/bubuntux/nordvpn/blob/master/LICENSE"><img src="https://badgen.net/github/license/bubuntux/nordvpn?color=cyan"/></a>
    <a href="https://cloud.docker.com/u/bubuntux/repository/docker/bubuntux/nordvpn"><img src="https://badgen.net/docker/size/bubuntux/nordvpn?icon=docker&label=size"/></a>
    <a href="https://cloud.docker.com/u/bubuntux/repository/docker/bubuntux/nordvpn"><img src="https://badgen.net/docker/pulls/bubuntux/nordvpn?icon=docker&label=pulls"/></a>
    <a href="https://cloud.docker.com/u/bubuntux/repository/docker/bubuntux/nordvpn"><img src="https://badgen.net/docker/stars/bubuntux/nordvpn?icon=docker&label=stars"/></a>
    <a href="https://github.com/bubuntux/nordvpn"><img src="https://badgen.net/github/forks/bubuntux/nordvpn?icon=github&label=forks&color=black"/></a>
    <a href="https://github.com/bubuntux/nordvpn"><img src="https://badgen.net/github/stars/bubuntux/nordvpn?icon=github&label=stars&color=black"/></a>
    <a href="https://github.com/bubuntux/nordvpn/actions/workflows/deploy.yml"><img src="https://github.com/bubuntux/nordvpn/actions/workflows/deploy.yml/badge.svg?branch=get_private_key"/></a>
</p>

Official `NordVPN` client in a docker container; it makes routing traffic through the `NordVPN` network easy.

# How to use this image
This branch is meant to be used to retrieve the wireguard private key.

**NOTE**: More than the basic privileges are needed for NordVPN. With Docker 1.2 or newer, Podman, Kubernetes, etc. you can use the `--cap-add=NET_ADMIN` option. Earlier versions, or with fig, and you'll have to run it in privileged mode.

    docker run --rm --cap-add=NET_ADMIN -e TOKEN='f6f2bb45...' ghcr.io/bubuntux/nordvpn:get_private_key


# ENVIRONMENT VARIABLES

* `TOKEN`     - Login into your NordVpn account and create an access token.

# Issues

If you have any problems with or questions about this image, please contact me through a [GitHub issue](https://github.com/bubuntux/nordvpn/issues).

# Disclaimer 
This project is independently developed for personal use, there is no affiliation with NordVpn or Nord Security companies,
Nord Security companies are not responsible for and have no control over the nature, content and availability of this project.
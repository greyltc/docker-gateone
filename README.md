# docker-gateone
defines a docker container with gateone installed

## Usage

1. [**Install docker**](https://docs.docker.com/installation/)
1. **Download and start the gateone server instance**  
`docker run --name gateone -p 443:443 -p 2345:22 -d greyltc/gateone`
1. **Test the gateone server**  
Point your browser to:  
https://localhost/  
and you should see a login page.
1. **[Optional] Stop the gateone docker server instance**  
`docker stop gateone`
1. **[Optional] Delete the gateone docker server instance (after stopping it)**  
`docker rm gateone`
1. **Profit.**

## SSH
You can also ssh into the container with `ssh docker@localhost:2345`

## Webdav
The docker user's home directory is made available via webdav at https://localhost

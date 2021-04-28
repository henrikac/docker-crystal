# Crystal Docker

A great image for you if you want to try out [crystal](https://crystal-lang.org/).

## Contains
* [ubuntu](https://ubuntu.com/)
* [crystal](https://crystal-lang.org/)
* [vim](https://www.vim.org/) (including vim-plugin for crystal)

Do you want to use VS Code instead of vim? Then it is recommended to use the [remote container extension](https://code.visualstudio.com/docs/remote/containers) instead of installing VS Code inside the container.

## Requirements
* [Docker](https://www.docker.com/?utm_source=google&utm_medium=cpc&utm_campaign=dockerhomepage&utm_content=nemea&utm_term=dockerhomepage&utm_budget=growth)

## Usage
#### Get image
```bash
docker pull henrikac/crystal
```

#### Run container
###### If container does not already exist
```bash
docker run -it --name crystal henrikac/crystal
```
*Notes:*
* if `--name container-name` is not specified a new container will be created every time.
* add `--network=host` if you want to access e.g. `http://localhost:8080` (`crystal play`) outside the container.
###### If container already exist
```bash
docker start crystal && docker attach crystal
```

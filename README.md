# Crystal Docker

A great image for you if you want to try out [crystal](https://crystal-lang.org/).

## Contains
* [ubuntu](https://ubuntu.com/)
* [crystal](https://crystal-lang.org/)
* [vim](https://www.vim.org/) (including vim-plugin for crystal)

Do you want to use VS Code instead of vim? Then it is recommended to use the [remote container extension](https://code.visualstudio.com/docs/remote/containers) instead of installing VS Code inside the container.

## Requirements
* [Docker](https://www.docker.com/?utm_source=google&utm_medium=cpc&utm_campaign=dockerhomepage&utm_content=nemea&utm_term=dockerhomepage&utm_budget=growth)

### Pull from dockerhub
```bash
docker pull henrikac/crystal:2.0.0
```

### Run henrikac/crystal:2.0.0
```bash
docker run -it henrikac/crystal:2.0.0
```
*Note:* add `--network=host` if you want to access e.g. `http://localhost:8080` (`crystal play`) outside the container.

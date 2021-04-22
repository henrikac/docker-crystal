# Crystal Docker

An ideal image for you if you want to try out [crystal](https://crystal-lang.org/).

## Contains
* [ubuntu](https://ubuntu.com/)
* [crystal](https://crystal-lang.org/)
* [vim](https://www.vim.org/).  

## Requirements
* [Docker](https://www.docker.com/?utm_source=google&utm_medium=cpc&utm_campaign=dockerhomepage&utm_content=nemea&utm_term=dockerhomepage&utm_budget=growth)

## Build image
#### Pull and run from dockerhub (recommended)
```bash
docker run -it henrikac/crystal:1.0.0
```

#### Pull from dockerhub
```bash
docker pull henrikac/crystal:1.0.0
```

#### Build from this repository
Clone this repository
```bash
git clone https://github.com/henrikac/docker-crystal.git
```
then build the image
```bash
docker build .
```

nodejs docker image with yarn
---

[![dockerhub](https://img.shields.io/badge/dockerhub-node--yarn-green.svg?style=flat-square)](https://hub.docker.com/r/takecy/node-yarn/)

[![nodejs](https://img.shields.io/badge/nodejs-6.9.3-blue.svg?style=flat-square)](https://nodejs.org)
[![yarn](https://img.shields.io/badge/yarn-0.19.1-blue.svg?style=flat-square)](https://yarnpkg.com)

[DockerHub](https://hub.docker.com/r/takecy/node-yarn)

## Usage
```shell
$ docker pull takecy/node-yarn:6.9.3-onbuild
```

and specify `FROM` in Dockerfile.
```dockerfile
FROM takecy/node-yarn:6.9.3-onbuild

////
```

see [Example Dockerfile](./Dockerfile_example)

## License
[MIT](./LICENSE)
nodejs docker image with yarn
---

[![dockerhub](https://img.shields.io/badge/dockerhub-node--yarn-green.svg?style=flat-square)](https://hub.docker.com/r/takecy/node-yarn/)

[![yarn](https://img.shields.io/badge/yarn-0.22.0-blue.svg?style=flat-square)](https://yarnpkg.com)

[![nodejs](https://img.shields.io/badge/nodejs-6.10.2-blue.svg?style=flat-square)](https://nodejs.org)
[![nodejs](https://img.shields.io/badge/nodejs-7.8.0-blue.svg?style=flat-square)](https://nodejs.org)

[DockerHub](https://hub.docker.com/r/takecy/node-yarn)

## Usage
```shell
$ docker pull takecy/node-yarn:6.10.2-onbuild
```

and specify `FROM` in Dockerfile.
```dockerfile
FROM takecy/node-yarn:6.10.2-onbuild

////
```

see [Example Dockerfile](./Dockerfile_example)

## License
[MIT](./LICENSE)
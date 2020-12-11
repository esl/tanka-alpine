# tanka-alpine

Alpine Linux (3.12) image bundled with Tanka/Jsonnet tools

# Bundled tools

* tk (tanka)
* jsonnet
* jb (jsonnet bundler) 

# Example usage

```
% docker run -ti -v $(pwd):/work erlangsolutions/tanka-alpine:alpine3.12 tk init
GET https://github.com/ksonnet/ksonnet-lib/archive/0d2f82676817bbf9e4acf6495b2090205f323b9f.tar.gz 200
GET https://github.com/grafana/jsonnet-libs/archive/1894e32a5d9d9de98ed763ff3061c07877d78d8a.tar.gz 200
Directory structure set up! Remember to configure the API endpoint:
`tk env set environments/default --server=https://127.0.0.1:6443`
```

```
% docker run -ti -v $(pwd):/work erlangsolutions/tanka-alpine:alpine3.12 jsonnet

<jsonnet output>
```

```
% docker run -ti -v $(pwd):/work erlangsolutions/tanka-alpine:alpine3.12 jb

<jb output>
```


Deno Buildpack
==============
Compatible apps:
- Deno apps

### How to usage?

You can check [sample app](./sample), and step as following:

* Create runtime.txt with Deno version

```
deno-1.10.2
```

* Create Procfile

```
release: deno bundle app.ts > bundle.js
web: deno run --allow-net bundle.js
```

* Build

```bash
pack build buildpacks-deno --builder paketobuildpacks/builder:full --path ./sample --buildpack docker.io/linuxchina/buildpack-deno:0.2.0 --buildpack gcr.io/paketo-buildpacks/procfile
```

# References

* Create a buildpack tutorial: https://buildpacks.io/docs/buildpack-author-guide/create-buildpack/
* Buildpack samples: https://github.com/buildpacks/samples/tree/main/buildpacks
* pure bash bible: https://github.com/dylanaraps/pure-bash-bible
* Buildpack for Deno: https://github.com/danbev/deno-buildpack

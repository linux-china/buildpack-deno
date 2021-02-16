Deno Buildpack
==============
Compatible apps:
- Deno apps

### How to usage?

* Create runtime.txt with Deno version

```
deno-1.7.4
```

* Create Procfile

```
release: deno cache app.ts
web: deno run --allow-net --cached-only app.ts
```

* Build

```bash
pack build buildpacks-deno --builder paketobuildpacks/builder:full --buildpack https://github.com/linux-china/buildpack-deno  --buildpack gcr.io/paketo-buildpacks/procfile
```

# References

* Create a buildpack tutorial: https://buildpacks.io/docs/buildpack-author-guide/create-buildpack/
* Buildpack samples: https://github.com/buildpacks/samples/tree/main/buildpacks
* pure bash bible: https://github.com/dylanaraps/pure-bash-bible

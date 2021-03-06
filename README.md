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

# Buildpacks directories

```
-----> layers_dir: /layers/xxxx
-----> platform dir: /platform
-----> plan.toml: /tmp/samples_buildpack-deno-925340106/samples_buildpack-deno/plan.toml
-----> HOME: /home/cnb
-----> PWD: /workspace
-----> Entrypoint /cnb/process
```

entrypoint commands

```
/cnb/process/web -->  /cnb/lifecycle/launcher
```

# References

* Create a buildpack tutorial: https://buildpacks.io/docs/buildpack-author-guide/create-buildpack/
* Buildpack samples: https://github.com/buildpacks/samples/tree/main/buildpacks
* pure bash bible: https://github.com/dylanaraps/pure-bash-bible

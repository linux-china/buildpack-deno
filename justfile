heroku:
  pack build buildpacks-deno --builder heroku/buildpacks:20  --path ./sample --buildpack ./ --buildpack heroku/procfile

build:
  pack build buildpacks-deno --builder paketobuildpacks/builder:full --path ./sample --buildpack ./ --buildpack gcr.io/paketo-buildpacks/procfile

server:
   docker run --interactive --tty --rm -p 8080:8080 buildpacks-deno

info:
  docker run --rm --entrypoint info buildpacks-deno

shell:
  docker run -t -i --rm --entrypoint /bin/bash buildpacks-deno

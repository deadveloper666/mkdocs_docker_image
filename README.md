# mkdocs

Repo for image published on dockerHub [https://hub.docker.com/r/danipenaperez/mkdocs](https://hub.docker.com/r/danipenaperez/mkdocs)

mkdocs image modified with some plugins and themes

Support published image on docker hub 

# Build 

To build the image use the script create_image.sh

```sh
$ create_image.sh

....
...
Successfully built be9bfbad95dc
Successfully tagged danipenaperez/mkdocs:latest
Succesfully create danipenaperez/mkdocs image

```
Will create locally  image danipenaperez/mkdocs latest 

# Run locally

Run ./publish.sh to publish new changes to dockerHub public artifactory
```sh
./publish.sh
..
latest: digest: sha256:5543b0017957f1c0917bbb27c9bf3dabbb92e9c329b68472530d99dfc779a5c6 size: 4299
Succesfully published danipenaperez/mkdocs danipenaperez/mkdocs:latest on docker hub
```
# Adding plugins to the base mkdocs image

Edit file .Dokerfile then add all "RUN pip install $PackageName" commands to install new plugins

Example:

```sh
RUN pip install mkdocs-gitbook
```

# Run the IMAGE :

Needed a mkdocs folder with mkdocs.yml descriptor file.

This repositoy contains the /test folder to test easilly:
```sh
$ cd test
$ docker run --rm -it -d -p 9999:8000 -v $PWD:/docs danipenaperez/mkdocs
$ sensible-browser http://localhost:9999
```

# Documentation-Server script

To easily run, stop and generate html from the documentation server use /test/documentationServer.sh with this goals:

## START

To start the documentation server at localhost

```sh
$ cd test
$ ./documentationServer.sh start
*************************************************
* - [[ Starting Local Documentation Server at http://localhost:9999  from sources o /home/dpena/development/workspaces/daniel/dockerhub/mkdocs/test ]]
* 
e356e47bb88a07b5b483a2c378e090eabf79bd8ef416dc2146cd711e24994282
Detected MKDOCS Server at http://localhost:9999  (will open automatically the browser)
Use './documentationServer.sh stop' to Stop server
```

## STOP

To stop the documentation server at localhost

```sh
$ cd test
$ ./documentationServer.sh stop
Stoppping Local mkdocs server...
Detected MKDOCS Server at http://localhost:9999
Stoppping Local mkdocs...DONE
```

## ASSEMBLE

To generate the HTML site from source markdown files

```sh
$ cd test
$ ./documentationServer.sh assemble

INFO     -  Cleaning site directory
INFO     -  Building documentation to directory: /docs/site
INFO     -  Documentation built in 0.26 seconds
Build the local documentation at $PWD/mkdocs/test/site.
```


# GITHUB ACTIONS

There is a github-actions-publish-to-dockerhub.yml Action that will push the image to dockerhub.

Is associated to release (phase), so it is necessary:
- Push to main  (git push -u origin main)
- Create new tag (git tag v1.0.1) 
- Push tag ( git push --tags)
- Create release from tag manually (https://github.com/deadveloper666/mkdocs_docker_image/releases  and "Draft new Release", and choose v1.0.1)

At Docker Hub, the image is published as tagVersioned (danipenaperez/mkdocs:v1.0.2) and latest (danipenaperez/mkdocs:latest)

# Testing Test mkdocs local test site
The goals is execute assemble and publish to gh-pages (ensure that github pages is active for your repository)

Execute ./assemble_and_publish_testsite_to_gh_pages.sh to execute the whole action.
After push to gh-pages , the action https://github.com/deadveloper666/mkdocs_docker_image/actions/workflows/pages/pages-build-deployment is fired , and the static html site is published at 

Live Site
[https://deadveloper666.github.io/mkdocs_docker_image/](https://deadveloper666.github.io/mkdocs_docker_image/)

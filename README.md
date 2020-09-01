# Dockerfile template
Template for all Dockerfiles created by DojoFive for EmbedOps release

## Using this template project
- The existing .gitlab-ci.yml will build the Dockerfile and put the resulting image in the Container Registry with the same tag as the git tag every time a commit is tagged. 
- Add labels as needed 
  - Labels must conform to the OCI Spec https://github.com/opencontainers/image-spec/blob/master/annotations.md#pre-defined-annotation-keys
  - Labels not defined in the OCI Spec must use the format com.dojofive.embedops.*  
  - revision, documentation, created, and source tags are created dynamically in the .gitlab-ci.yml file
- Tag convention: use v# unless there is main dependency whose version gives more information to the user. 

These steps are mandatory for EmbedOps build-images:
- [ ] Replace the above title with your project name. 
- [ ] Describe how to use your container in Usage below
- [ ] List the dependencies of this project, including versions/tags where available in Dependencies below
- [ ] Update the static Dockerfile LABELs 
- [ ] Add first tag 

## Usage

## Dependencies

## For Developers:
  The containers are divided into the main container and a development container.
- If working on a feature branch, do not add a tag to your branch so your changes are pushed to the development container. The SHA will be used as the tag.
- When merging into the main branch, or want to push to the main container, add a tag and it will update the :latest tag as well as add the tag you originally added

## License
Copyright 2020 Dojo Five, LLC
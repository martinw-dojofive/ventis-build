FROM scratch
# Change to build on another image. FROM line must always be first line in file. 
# Reference a tag other than latest if available to ensure repeatability
# eg: FROM ubuntu:18.04 is preferable to FROM ubuntu

LABEL "org.opencontainers.image.title"="Human Readable Title"
LABEL "org.opencontainers.image.description"="Longer description of this container."
LABEL "org.opencontainers.image.vendor"="Company Name, LLC"
LABEL "org.opencontainers.image.authors"="Your Name(s) Here"
# Labels for documentation, source, revision, and created are set dynamically in the .gitlab-ci.yml file


 

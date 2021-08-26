FROM scratch
# Change to build on another image. FROM line must always be first line in file. 
# Reference a tag other than latest if available to ensure repeatability
# eg: FROM ubuntu:18.04 is preferable to FROM ubuntu

LABEL "org.opencontainers.image.title"="Human Readable Title"
LABEL "org.opencontainers.image.description"="Longer description of this container."
LABEL "org.opencontainers.image.vendor"="Company Name, LLC"
LABEL "org.opencontainers.image.authors"="Your Name(s) Here"
# Labels for documentation, source, revision, and created are set dynamically in the .gitlab-ci.yml file


# When installing packages from apt, don't install recommended packages, pin versions, 
#      and clean up the lists dir after installs have been made to reduce space
# Package versions in Ubuntu releases can be found here: https://packages.ubuntu.com/

# RUN apt-get install -y --no-install-recommends \
#                     <package name>=0.0.0  && \ 
#     apt-get clean && \
#     rm -rf /var/lib/apt/lists/*


# When installing packages from pip, don't use the cache directory and pin versions
# Package versions for pip can be found here: https://pypi.org/search/

# RUN pip3 install --no-cache-dir \
#                  <package name>==0.0.0

# Set environment variables with ENV
# ENV MY_VAR=variable_value

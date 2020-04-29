# ------------------------------- DO NOT MODIFY ------------------------------ #
# √ Pulls image - latest alpine (linux)
FROM alpine:latest
# ------------------------- IMPLEMENT SOLUTION BELOW ------------------------- #

# v Folder to put the image
WORKDIR /tldr

# √ Copies all files into container
COPY . .

# Install dependecies -> tldr
RUN apk update
RUN apk add nodejs npm
RUN apk add curl
RUN npm install -g tldr

# Run in command line a tldr command ( $ tldr -version)
RUN  tldr --version

# Run additional `curl` commands
RUN tldr curl

# ENDS - Gt tldr version
CMD ["echo", "Successful Implementation"]
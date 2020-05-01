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
# FIXME -> Error with updating cache and creating index
# RUN tldr curl

# Get curl version data
RUN curl --version

# Run curl help to get all commands
RUN curl -help

# Set a 5 second timeout and GET google data
RUN curl -m 5 google.com  

# Get the header data from google and saves it in a file, shows progress bar
RUN curl -# -o google_header.html -I google.com

# prints contents of google_header file to terminal
RUN cat google_header.html

# ENDS 
RUN echo "Successful Implementation"



# ------ BUILD INSTRUCTIONS -----
# 1. docker build -t robotgyal/alpine .
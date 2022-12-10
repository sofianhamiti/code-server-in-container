# BUILD THE CONTAINER IMAGE LOCALLY
docker build -t ide-in-container:latest .


# RUN CONTAINER WITH VS CODE IN IT
# RUN THIS COMMAND IF YOU WANT TO MOUNT THE NOTEBOOK INSTANCE HOME FOLDER
docker run --rm -it -p 8080:8080 -v /home:/home ide-in-container:latest

# RUN THIS ONE OTHERWISE
docker run --rm -it -p 8080:8080 ide-in-container:latest

# BUILD THE CONTAINER IMAGE LOCALLY
docker build -t ide-in-container:latest .

# RUN CONTAINER WITH VS CODE IN IT
# RUN THIS COMMAND IF YOU WANT TO MOUNT THE NOTEBOOK INSTANCE HOME/SAGEMAKER FOLDER
docker run --rm -it -p 8080:8080 -v /home/ec2-user/SageMaker/:/home/SageMaker ide-in-container:latest code-server --auth none --disable-telemetry --bind-addr 0.0.0.0:8080

# RUN THIS ONE OTHERWISE
docker run --rm -it -p 8080:8080 ide-in-container:latest code-server --auth none --disable-telemetry --bind-addr 0.0.0.0:8080

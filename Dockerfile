FROM python:3.10.9


# INSTALL CODE-SERVER IN CONTAINER
RUN curl -fsSL https://code-server.dev/install.sh | sh

# POINT VS CODE (IN CONTAINER) TO THE CONFIGURATION (ON NOTEBOOK INSTANCE)
# ENV XDG_DATA_HOME=/home/ec2-user/SageMaker/vscode-config

# RUN CODE-SERVER WHEN CONTAINER STARTS
CMD code-server --auth none --disable-telemetry --bind-addr 0.0.0.0:8080
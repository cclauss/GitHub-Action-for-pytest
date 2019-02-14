FROM python:3.7-alpine

LABEL "com.github.actions.name"="GitHub Action for pytest"
LABEL "com.github.actions.description"="Run pytest commands"
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="yellow"

RUN apk add --no-cache bash
RUN pip install --upgrade pip
RUN pip install pytest
RUN python --version ; pip --version ; pytest --version

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

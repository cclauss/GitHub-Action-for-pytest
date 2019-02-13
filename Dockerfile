FROM python:3.7-alpine

LABEL "com.github.actions.name"="GitHub Action for Flake8"
LABEL "com.github.actions.description"="Run Flake8 commands"
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="6f42c1"

RUN apk add --no-cache bash
RUN pip install --upgrade pip
RUN pip install flake8
RUN python --version ; pip --version ; echo "flake8 $(flake8 --version)"

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

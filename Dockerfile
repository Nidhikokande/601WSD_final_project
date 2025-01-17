FROM python:3.8.10-slim-buster

LABEL Nidhi Kokande <nlk8@njit.edu>

#RUN apt-get update && apt-get install -qq -y \
 # build-essential libpq-dev --no-install-recommends

ENV INSTALL_PATH /app
RUN mkdir -p $INSTALL_PATH

WORKDIR $INSTALL_PATH

COPY req.txt req.txt
RUN pip install -r req.txt

COPY . .

CMD [ "python", "./run.py" ]
FROM python:3.11-rc-slim-bullseye
WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY src/users.py .
CMD [ "python", "./users.py" ]

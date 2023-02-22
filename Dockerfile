FROM python:3.8.2-alpine
MAINTAINER gokul
WORKDIR /python
COPY . .
RUN pip3 install -r requirements.txt
EXPOSE 80
CMD [ "python3", "-m", "flask", "run", "--host=0.0.0.0", "--port=80" ]

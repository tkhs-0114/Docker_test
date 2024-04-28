FROM python:3.10
WORKDIR /usr/src/app
RUN pip install flask==2.3.3
CMD ["flask", "run", "--host=0.0.0.0"]
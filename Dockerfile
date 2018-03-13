FROM resin/rpi-raspbian
RUN apt-get update && apt-get install -y python
RUN apt-get install python-pantilthat
RUN apt-get install python-pip
RUN pip install flask
COPY examples /examples
CMD ["python","/examples/pantiltweb/pantiltweb.py"]

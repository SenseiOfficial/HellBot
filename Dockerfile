FROM teamvaders/hellbot:latest

#clonning repo 
RUN git clone https://github.com/garima-rathore/InVade.git /root/hellbot

#working directory 
WORKDIR /root/hellbot

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","hellbot"]

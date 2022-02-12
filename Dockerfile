FROM sandy1709/catuserbot:alpine

#clonning repo 
RUN git clone https://github.com/TeamRaichu/SpamUB.git /SpamUB
#working directory 
WORKDIR /root/SpamUB

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/SpamUB/bin:$PATH"

CMD ["python3","-m","RaichUB"]

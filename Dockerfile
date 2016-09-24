## Airplay (Shairport) for Raspberry Pi ##
FROM resin/rpi-raspbian 
MAINTAINER Amit Gandhi <amit@gandhi.co.nz> 


# Install Shairport Dependencies
RUN apt-get -q update && apt-get -q upgrade && \
  apt-get install -qy --force-yes git build-essential libssl-dev libavahi-client-dev libasound2-dev avahi-daemon


# Install Shairport
RUN git clone https://github.com/abrasive/shairport.git
RUN cd shairport && ./configure && make && make install

COPY shairport.conf /etc/default/shairport

CMD ["shairport"]

FROM	debian:trixie

RUN 	apt-get -U install -y dnsdist gettext-base

ADD	dnsdist.conf.in /etc/dnsdist/dnsdist.conf.in
ADD	--chmod=755	start.sh /usr/local/bin/start.sh

CMD	/usr/local/bin/start.sh

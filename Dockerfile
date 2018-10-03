FROM arm32v7/ubuntu

RUN apt-get update && \
	apt-get -y install \
		wget \
		libfontconfig \
		&& \
	wget https://s3-us-west-2.amazonaws.com/grafana-releases/release/grafana_5.2.4_armhf.deb && \
	dpkg -i grafana_5.2.4_armhf.deb 

EXPOSE 3000

WORKDIR /usr/share/grafana
CMD ["/usr/sbin/grafana-server", "--", "--config=/etc/grafana", "cfg:default.paths.provisioning=/etc/grafana/provisioning", "cfg:default.paths.data=/var/lib/grafana", "cfg:default.paths.logs=/var/log/grafana", "cfg:default.paths.plugins=/var/lib/grafana/plugins"]


       

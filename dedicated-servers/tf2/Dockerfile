FROM cm2network/steamcmd
# Install TF2
RUN mkdir /var/server
RUN ./steamcmd.sh \
	+login anonymous \
	+force_install_dir /var/server/ \
	+app_update 232250 validate \
	+quit

FROM cm2network/steamcmd
# Install TF2
RUN mkdir /home/steam/tf2
RUN ./steamcmd.sh \
	+login anonymous \
	+force_install_dir /home/steam/tf2/\
	+app_update 232250 validate \
	+quit

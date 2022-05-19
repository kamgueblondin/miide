FROM windev/webdev-base:FR250083h

COPY MOHHDE.ZIP ${WEBDEVConfiguration}comptes/ftp_webdev/

RUN set -ex \
	&& cd ${WEBDEVBinaries} \
	&& ${WEBDEVBinaries}WDInstalle /DOCKER/INSTALLEGO/MOHHDE

# Création de la persistance
VOLUME ${WEBDEVConfiguration}comptes/Donnees/MOHHDE/
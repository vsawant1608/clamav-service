FROM clamav/clamav:stable
COPY clamd.conf /etc/clamav/clamd.conf
COPY freshclam.conf /etc/clamav/freshclam.conf
#RUN mkdir /run/clamav /run/lock /var/lock/lock
#RUN chown -R clamav:clamav /run/clamav /run/lock /var/lock/lock
#RUN chmod 770 /run/clamav /run/lock /var/lock/lock
# COPY "./under.sh" "/init"
# USER clamav
EXPOSE 3310
ENTRYPOINT [ "/init" ]


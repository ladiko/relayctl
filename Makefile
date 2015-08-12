

relayctl : relayctl.o
	$(CC) $(LDFLAGS) relayctl.o -o relayctl -lftdi

relayctl.o : relayctl.c
	$(CC) $(CFLAGS) -c relayctl.c

clean :
	rm -f *.o
	rm -f relayctl

install : relayctl
	chmod 555 relayctl
	cp relayctl /usr/bin/
	chmod 555 powerctl
	cp powerctl /usr/bin/

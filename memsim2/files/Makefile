PRG     = memsim2
CFLAGS  = -O2 -pipe -fstack-protector-strong -fno-strict-aliasing  
CFLAGS += -std=c99 -Wall -Wextra -I. -D_DEFAULT_SOURCE 
SRCS    = memsim2.c parse_ihex.c parse_srec.c
OBJS    = memsim2.o parse_ihex.o parse_srec.o

BINDIR  = $(DESTDIR)$(PREFIX)/bin
ETCDIR  = $(DESTDIR)$(PREFIX)/etc
MANDIR  = $(DESTDIR)$(PREFIX)/share/man/man1

LDFLAGS = 

all : $(PRG)

$(PRG): $(OBJS)
	$(CC) $(LDFLAGS) $(CFLAGS) $(OBJS) -o $@
.c.o:
	$(CC) $(CFLAGS) -Os -c $< -o $@

install:
	install -m 755 -s $(PRG) $(BINDIR)

clean:
	rm -f $(PRG) $(OBJS)

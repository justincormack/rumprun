DBG?=	 -O2 -g
CFLAGS+= -std=gnu99 ${DBG}
CFLAGS+= -fno-stack-protector -ffreestanding
CXXFLAGS+= -fno-stack-protector -ffreestanding

CFLAGS+= -Wall -Wimplicit -Wmissing-prototypes -Wstrict-prototypes
ifndef NOGCCERROR
CFLAGS+= -Werror
endif

LDFLAGS.hw.x86_64= -z max-page-size=0x1000

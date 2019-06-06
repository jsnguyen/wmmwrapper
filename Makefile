CXX=gcc

SRCDIR=src
OBJDIR=build

_INCDIRS=include \
				 wmm2015_src/src

INCDIRS=$(addprefix -I,$(_INCDIRS))

_LIBDIRS=lib
LIBDIRS=$(addprefix -L,$(_LIBDIRS))

_LIBS=m
LIBS=$(addprefix -l,$(_LIBS))

CXXFLAGS=-O3 -Wall $(INCDIRS) -fPIC
LDFLAGS=-O3 -shared $(INCDIRS) $(LIBDIRS) $(LIBS)

_SRCFILES=wmmwrapper.c

SRCS=$(addprefix $(SRCDIR)/,$(_SRCFILES))

_OBJFILES=$(_SRCFILES:%.c=%.o)
OBJS=$(addprefix $(OBJDIR)/,$(_OBJFILES))

_WMMOBJFILES= wmm2015_src/src/GeomagnetismLibrary.o

LIBDIR=lib
LIB=libww.so

DIRGUARD=@mkdir -p $(@D)

all: $(LIBDIR)/$(LIB)

$(LIBDIR)/$(LIB) : $(OBJS) $(_WMMOBJFILES)
	$(DIRGUARD)
	$(CXX) $(OBJS) $(_WMMOBJFILES) -o $@ $(LDFLAGS)

$(OBJDIR)/%.o : $(SRCDIR)/%.c
	$(DIRGUARD)
	$(CXX) $< -c -o $@ $(CXXFLAGS)

.SECONDARY: $(OBJS)
.PHONY: clean

clean:
	rm $(OBJDIR)/*.o
	rm $(LIBDIR)/*.so
	rmdir $(OBJDIR) $(LIBDIR)

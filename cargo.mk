ifneq ($(findstring i686,$(TARGET)),)
	CC := $(CC) -m32
else
	CC := $(CC) -fPIC
endif

all:
	$(CC) src/miniz.c -c -o $(DEPS_DIR)/miniz.o
	ar crus $(DEPS_DIR)/libminiz.a $(DEPS_DIR)/miniz.o
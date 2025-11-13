PRO_DIR=$(shell pwd)
SRC_DIR=$(PRO_DIR)/src
OBJ_DIR=$(PRO_DIR)/obj
INC_DIR=$(PRO_DIR)/include
LIB_DIR=$(PRO_DIR)/lib
BIN_DIR=$(PRO_DIR)/bin

CC=gcc
AR=ar

LIBS=$(LIB_DIR)/libmybasic.a $(LIB_DIR)/libmyadvanced.a
SRCS=$(filter-out $(SRC_DIR)/myapp.c, $(wildcard $(SRC_DIR)/*.c))
OBJS=$(subst $(SRC_DIR), $(OBJ_DIR), $(SRCS:.c=.o))

.PHONY: all basic_ops advanced_ops clean

all: basic_ops advanced_ops $(BIN_DIR)/myapp

$(BIN_DIR)/myapp: $(SRC_DIR)/myapp.c $(LIBS)
	$(CC) $< -I$(INC_DIR) -L$(LIB_DIR) -lmybasic -lmyadvanced -lm -o $@

basic_ops:
	$(MAKE) -C basic_ops

advanced_ops:
	$(MAKE) -C advanced

clean:
	rm -rf $(BIN_DIR)/myapp
	$(MAKE) -C basic_ops clean
	$(MAKE) -C advanced clean
	
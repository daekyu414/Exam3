PRO_DIR=$(shell pwd)
SRC_DIR=$(PRO_DIR)/src
OBJ_DIR=$(PRO_DIR)/obj
INC_DIR=$(PRO_DIR)/include
LIB_DIR=$(PRO_DIR)/lib
BIN_DIR=$(PRO_DIR)/bin

CC=gcc
AR=ar

SRCS=$(filter-out $(SRC_DIR)/myapp.c, $(wildcard $(SRC_DIR)/*.c))
OBJS=$(subst $(SRC_DIR), $(OBJ_DIR), $(SRCS:.c=.o))

.PHONY: all basic clean

all: $(BIN_DIR)/myapp

$(BIN_DIR)/myapp: $(SRC_DIR)/myapp.c $(LIB_DIR)/libmybasic.a
	$(CC) $< -I$(INC_DIR) -L$(LIB_DIR) -lmybasic -o $@

basic: $(LIB_DIR)/libmybasic.a

$(LIB_DIR)/libmybasic.a: $(OBJS)
	$(AR) rv $@ $^

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) -c $< -I$(INC_DIR) -o $@

clean:
	rm -rf $(OBJ_DIR)/* $(LIB_DIR)/* $(BIN_DIR)/*
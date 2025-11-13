PRO_DIR=$(abspath ..)
SRC_DIR=$(PRO_DIR)/advanced/src
OBJ_DIR=$(PRO_DIR)/advanced/obj
INC_DIR=$(PRO_DIR)/include
LIB_DIR=$(PRO_DIR)/lib
BIN_DIR=$(PRO_DIR)/bin

CC=gcc
AR=ar

SRCS=$(wildcard $(SRC_DIR)/*.c)
OBJS=$(subst $(SRC_DIR), $(OBJ_DIR), $(SRCS:.c=.o))

.PHONY: all clean

all: $(LIB_DIR)/libmyadvanced.a

$(LIB_DIR)/libmyadvanced.a: $(OBJS)
	$(AR) rv $@ $^

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) -c $< -I$(INC_DIR) -o $@

clean:
	rm -rf $(LIB_DIR)/libmyadvanced.a $(OBJ_DIR)/*
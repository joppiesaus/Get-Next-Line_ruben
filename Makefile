SRCS =  get_next_line_utils.c\
		get_next_line.c\

NAME = get_next_line.a

OBJS = $(SRCS:.c=.o)

CC = gcc

FLAGS = -Wall -Werror -Wextra

all: $(NAME)
	@echo "\n✅ Built - Get Next Line Archive"
	@make clean

%.o : %.c get_next_line.h
	@$(CC) $(FLAGS) -c $<
	@echo "🏗  Compiling: $<"

$(NAME): $(OBJS)
	@ar -cr $(NAME) $(OBJS)

clean:
	@rm -f $(OBJS) $(OBJS_B)
	@echo "🧹 Done cleaning objects"

fclean: clean
	@rm -f $(NAME)
	@echo "🧹 Done cleaning archive"

re: fclean all

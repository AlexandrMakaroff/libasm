.PHONY = all clean fclean re bonus
NAME = libasm.a
RM = rm -f
FLAGS = -f macho64
SRCS = ft_strlen.s \
		ft_strcpy.s \
		ft_strcmp.s \
		ft_write.s \
		ft_read.s \
		ft_strdup.s
OBJS = $(SRCS:.s=.o)
%.o: %.s
	@nasm $(FLAGS) $< -o $@
all:	$(NAME)
$(NAME) : $(OBJS)
	@ar rc $(NAME) $(OBJS)
	@ranlib $(NAME) && gcc main.c -o test $(NAME) && echo > test.txt "Hello, world" && touch write.txt
clean:
	@$(RM) $(OBJS)
fclean:	clean
	@$(RM) $(NAME)
	@$(RM) test
	@$(RM) test.txt
	@$(RM) write.txt
re:	fclean all
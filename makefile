CC = gcc
CFLAGS = -Wall -Wextra -std=c11 -Iinclude

SRC = src/builtin.c src/executor.c src/expand.c src/history.c src/job_control.c src/jobs.c src/lexer.c src/main.c src/parser.c src/token.c

shellforge: $(SRC)
	gcc $(CFLAGS) $(SRC) -lreadline -o shellforge

clean:
	rm -f shellforge t

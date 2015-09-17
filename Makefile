# thanks to:
# http://stackoverflow.com/questions/21768542/libc-h-no-such-file-or-directory-when-compiling-nanomsg-pipeline-sample

LIBA=/usr/local/lib/libnanomsg.a
LIBS=-lpthread -lanl

all:
	gcc pipeline.c -o pipeline $(LIBA) $(LIBS)
	gcc reqrep.c -o reqrep $(LIBA) $(LIBS)
	gcc pair.c -o pair $(LIBA) $(LIBS)
	gcc pubsub.c -o pubsub $(LIBA) $(LIBS)
	gcc survey.c -o survey $(LIBA) $(LIBS)
	gcc bus.c -o bus $(LIBA) $(LIBS)

clean:
	rm -f pipeline reqrep pair pubsub survey bus

run:all
	@./pipeline.sh
	@./reqrep.sh
	@./pair.sh
	@./pubsub.sh
	@./survey.sh
	@./bus.sh

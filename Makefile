TAG :=	jasonish/mtpot

all:
	docker build -t $(TAG) .

clean:
	rm -f *~

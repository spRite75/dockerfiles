FROM alpine:3.7
RUN apk update && \
	apk upgrade && \
	apk add curl wget bash ruby ruby-json && \
	rm -rf /var/cache/apk/*
RUN gem install scout_realtime --no-document
EXPOSE 5555
ENTRYPOINT ["scout_realtime", "-f"]

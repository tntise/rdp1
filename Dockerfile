FROM linuxserver/webtop:alpine-icewm

ENV PUID=1000
ENV PGID=1000
ENV TZ=Asia/Dhaka

# এই লাইনের মাধ্যমে neofetch ইন্সটল হবে
RUN apk add --no-cache neofetch

EXPOSE 3000

VOLUME /config

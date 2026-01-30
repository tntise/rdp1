# আমরা Debian ব্যবহার করছি যা Ubuntu-র মতোই কিন্তু একটু হালকা
FROM linuxserver/webtop:debian-xfce

# এনভায়রনমেন্ট ভেরিয়েবল
ENV PUID=1000
ENV PGID=1000
ENV TZ=Asia/Dhaka

# পোর্ট এক্সপোজ করা
EXPOSE 3000

# ভলিউম কনফিগারেশন
VOLUME /config

# Neofetch এবং অন্যান্য টুলস ইন্সটল করা (Debian এ apt কাজ করে)
RUN apt-get update && \
    apt-get install -y neofetch firefox-esr && \
    apt-get clean

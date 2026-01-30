# আমরা Alpine IceWM ব্যবহার করছি যা Render এর ফ্রি সার্ভারের জন্য পারফেক্ট
FROM linuxserver/webtop:alpine-icewm

# এনভায়রনমেন্ট ভেরিয়েবল
ENV PUID=1000
ENV PGID=1000
ENV TZ=Asia/Dhaka

# পোর্ট ওপেন করা
EXPOSE 3000

# ভলিউম কনফিগারেশন
VOLUME /config

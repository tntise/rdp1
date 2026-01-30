# আমরা হালকা ভার্সনের উবুন্টু ডেক্সটপ (XFCE) ব্যবহার করছি যেন Render-এ ক্রাশ না করে
FROM linuxserver/webtop:ubuntu-xfce

# কিছু বেসিক সেটিংস
ENV PUID=1000
ENV PGID=1000
ENV TZ=Asia/Dhaka

# ব্রাউজারে দেখার জন্য পোর্ট ওপেন করা
EXPOSE 3000

# Render এর জন্য ভলিউম পাথ (অপশনাল)
VOLUME /config

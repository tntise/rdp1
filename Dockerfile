FROM linuxserver/webtop:alpine-icewm

ENV PUID=1000
ENV PGID=1000
ENV TZ=Asia/Dhaka

# Neofetch প্যাকেজ হিসেবে নেই, তাই আমরা সরাসরি স্ক্রিপ্ট ডাউনলোড করব
# ১. প্রথমে curl এবং bash ইন্সটল করছি
# ২. এরপর neofetch ডাউনলোড করে পারমিশন দিচ্ছি
RUN apk add --no-cache curl bash && \
    curl -L -o /usr/bin/neofetch https://raw.githubusercontent.com/dylanaraps/neofetch/master/neofetch && \
    chmod +x /usr/bin/neofetch

EXPOSE 3000

VOLUME /config

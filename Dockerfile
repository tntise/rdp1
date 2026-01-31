# আমরা Debian IceWM ব্যবহার করছি
# কারণ: ১. এটি Debian তাই 'apt' কাজ করবে
# ২. এটি IceWM তাই ৫১২ মেগাবাইট র‍্যামে খুব স্মুথলি চলবে
FROM linuxserver/webtop:debian-icewm

# আপনার টাইমজোন এবং আইডি
ENV PUID=1000
ENV PGID=1000
ENV TZ=Asia/Dhaka

# ---------- সিকিউরিটি সিস্টেম ----------
# আপনার পছন্দের ইউজারনেম এবং পাসওয়ার্ড
ENV CUSTOM_USER=Rakin
ENV PASSWORD=Rakin123#

# ব্রাউজার সেশন যাতে ডিসকানেক্ট না হয় তার জন্য হোম ফিক্স
ENV FM_HOME=/config

# পোর্ট ওপেন করা
EXPOSE 3000

# ডাটা সেভ রাখার লোকেশন
VOLUME /config

# আমরা আগে থেকেই Firefox এবং দরকারি টুলস ইন্সটল করে দিচ্ছি
RUN apt-get update && \
    apt-get install -y firefox-esr curl nano && \
    # Neofetch ম্যানুয়ালি ইন্সটল করা (প্যাকেজে না থাকায়)
    curl -L "https://github.com/dylanaraps/neofetch/raw/master/neofetch" -o /usr/bin/neofetch && \
    chmod +x /usr/bin/neofetch && \
    # ক্লিন করা
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

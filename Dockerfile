# আমরা Debian XFCE ব্যবহার করছি (হুবহু উবুন্টুর মতো)
FROM linuxserver/webtop:debian-xfce

# আপনার টাইমজোন এবং আইডি সেটআপ
ENV PUID=1000
ENV PGID=1000
ENV TZ=Asia/Dhaka

# ---------- সিকিউরিটি সিস্টেম (Password) ----------
# লগইন করার সময় এই নাম এবং পাসওয়ার্ড দিতে হবে
ENV CUSTOM_USER=Rakin
ENV PASSWORD=Rakin123#

# পোর্ট ওপেন করা
EXPOSE 3000

# ভলিউম কনফিগারেশন
VOLUME /config

# আমরা কোনো সফটওয়্যার ইন্সটল করছি না, আপনি ম্যানুয়ালি করবেন
# শুধু সিস্টেম আপডেট করে ক্লিন রাখা হচ্ছে
RUN apt-get update && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# আমরা Alpine ব্যবহার করছি কারণ এটি Ubuntu থেকে ১০ গুণ হালকা
# কিন্তু দেখতে এবং কাজ করতে একদম একই রকম (XFCE Desktop)
FROM linuxserver/webtop:alpine-xfce

# অটোমেটিক রুট ইউজার এবং পারমিশন ঠিক করা
ENV PUID=0
ENV PGID=0
ENV TZ=Asia/Dhaka

# সিকিউরিটি এবং পাসওয়ার্ড সেটিংস
# আপনি চাইলে নিচের পাসওয়ার্ড পরিবর্তন করতে পারেন, অথবা ফাঁকা রাখলে পাসওয়ার্ড চাইবে না
ENV CUSTOM_USER=user
ENV PASSWORD=password

# পোর্ট ওপেন করা (Render এর জন্য ৩০০০ পোর্ট জরুরি)
EXPOSE 3000

# ভলিউম কনফিগারেশন
VOLUME /config

# ها وردة جاي تخمـط الملف كتابة - @ZQ_LO - @S_Z_H

FROM theteamultroid/ultroid:main

# set timezone
ENV TZ=Asia/Baghdad
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY installer.sh .

RUN bash installer.sh

# changing workdir
WORKDIR "/root/TeamUltroid"

# start the bot.
CMD ["bash", "startup"]

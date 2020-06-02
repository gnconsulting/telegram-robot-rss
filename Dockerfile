FROM python:2.7-alpine
CMD python .docker/initconfig.py && python robotrss.py

# Environment Variables for future use
ENV BOT_TOKEN telegram_bot_token
ENV UPDATE_INTERVAL 300

WORKDIR /workspace
COPY . /workspace

RUN mkdir /workspace/resources/userdata
RUN pip install -r requirements.txt && chgrp -R root /workspace && chmod -R g+rwx /workspace \

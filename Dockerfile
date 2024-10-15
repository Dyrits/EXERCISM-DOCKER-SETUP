FROM alpine/curl:latest

RUN curl -L https://github.com/exercism/cli/releases/download/v3.5.2/exercism-3.5.2-linux-x86_64.tar.gz -o exercism.tar.gz \
    && tar -xvzf exercism.tar.gz \
    && rm exercism.tar.gz

RUN mkdir -p /root/bin \
    && mv exercism /root/bin \
    && echo 'export PATH=/root/bin:$PATH' >> /root/.bash_profile

# Ensure the PATH is set correctly
ENV PATH="/root/bin:${PATH}"
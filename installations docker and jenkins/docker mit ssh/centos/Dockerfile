FROM centos

RUN useradd remote_user && \ 
echo "testuser1234" | passwd remote_user --stdin && \
mkdir -p /home/remote_user/.ssh && chmod 700 /home/remote_user/.ssh

COPY ./id_rsa.pub /home/remote_user/.ssh/authorized_keys

RUN chown -R remote_user:remote_user /home/remote_user/.ssh && \
chmod 600 /home/remote_user/.ssh/authorized_keys

RUN /usr/sbin/sshd-keygen

CMD /usr/sbin/sshd -D
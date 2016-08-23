FROM registry.access.redhat.com/rhel7.2

ENV foo /bar
ENV destdir /dest
RUN mkdir $foo
RUN mkdir $destdir
ADD . ${foo}
RUN cp $foo/listener $destdir
RUN cp $foo/start.sh $destdir
EXPOSE 4444
user root
CMD ["/dest/listener", "-p 4444", "-c"]

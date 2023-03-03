FROM ctlc/buildstep:ubuntu13.10

RUN git clone --depth 1 http://github.com/jesperfj/buildpack-tomcat.git /build/buildpacks/buildpack-tomcat
RUN echo http://github.com/jesperfj/buildpack-tomcat.git | cat - /build/buildpacks.txt > /tmp/out && mv /tmp/out /build/buildpacks.txt

ADD . /app
RUN /build/builder
CMD /start web

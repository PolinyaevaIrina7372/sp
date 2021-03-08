FROM centos
COPY sp1.sh .
RUN chmod +x sp1.sh
CMD ./sp1.sh


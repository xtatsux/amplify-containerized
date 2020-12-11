FROM public.ecr.aws/amazonlinux/amazonlinux:latest
WORKDIR /tmp
RUN curl -sL https://rpm.nodesource.com/setup_10.x | bash -
RUN yum install -y nodejs npm unzip less tar gzip && \
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    ./aws/install

RUN npm install -g @aws-amplify/cli
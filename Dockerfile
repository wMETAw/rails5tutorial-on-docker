FROM ruby:2.3.3
RUN apt-get clean
RUN apt-get update -qq
RUN apt-get install -y build-essential 
RUN apt-get install -y libpq-dev
RUN apt-get install -y nodejs

# ワーキングディレクトリの設定
RUN mkdir /myapp
WORKDIR /myapp

# gemfileを追加する
ADD Gemfile /myapp/Gemfile
ADD Gemfile.lock /myapp/Gemfile.lock

# gemfileのinstall
RUN bundle install
ADD . /myapp

#RUN cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
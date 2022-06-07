FROM ubuntu:18.04
   
# Prerequisites
RUN apt update && apt install -y curl git unzip xz-utils zip libglu1-mesa openjdk-8-jdk wget llvm cmake ninja-build pkg-config clang libgtk-3-dev
   
# Set up new user
RUN useradd -ms /bin/bash developer
USER developer
WORKDIR /home/developer
   
# Prepare Android directories and system variables
RUN mkdir -p Android/sdk
ENV ANDROID_SDK_ROOT /home/developer/Android/sdk
RUN mkdir -p .android && touch .android/repositories.cfg
   
# Set up Android SDK
RUN wget -O sdk-tools.zip https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip
RUN unzip sdk-tools.zip && rm sdk-tools.zip
RUN mv tools Android/sdk/tools
RUN yes | Android/sdk/tools/bin/sdkmanager --licenses 
RUN Android/sdk/tools/bin/sdkmanager "build-tools;29.0.2" "patcher;v4" "platform-tools" "platforms;android-29" "sources;android-29"
ENV PATH "$PATH:/home/developer/Android/sdk/platform-tools"
RUN /home/developer/Android/sdk/tools/bin/sdkmanager --install "cmdline-tools;latest"

# Download Flutter SDK
RUN git clone https://github.com/flutter/flutter.git -b stable
ENV PATH "$PATH:/home/developer/flutter/bin"
RUN flutter doctor --android-licenses
RUN flutter doctor
RUN flutter precache
USER root
RUN apt install -y openjdk-11-jdk
WORKDIR /home/developer
RUN echo '#!/bin/bash\nflutter clean && flutter pub get && flutter build apk --release' > build.sh
RUN chmod 777 build.sh
USER developer
WORKDIR /home/developer/app
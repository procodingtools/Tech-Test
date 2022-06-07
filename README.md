# Tech Test

RentReady Technical Exam. This app was written in Flutter.


## Table Content

- [Microsoft DataVerse](#microsoft-dataverse)
- [Unit test](#unit-test)
- [UI test](#ui-test)
- [Build with docker](#build-with-docker)
  <br/>

## Microsoft DataVerse
This Application is backed by dataverse, which allows data to be integrated from multiple sources into a single store.
Since we're using a mobile application, we have to authorize the app to access to powerapps API's using `Bearer` token by creating an Azure AD application and using the Server to Server (S2S) athentication method.
<br/>

## Unit test
All unit test files are located in the `test` folder.
The `accounts_test.dart` and `provinces_test.dart` files contains a set of tests for testing most case scenarios.
To perform the unit test, just execute the following commands:

**Test accounts**

    $ flutter test test/accounts_test.dart

**Test provinces**

    $ flutter test test/provinces_test.dart

If the output shows `All tests passed`, the application is safe to publish otherwise something goes wrong.
<br/>

## UI test
All UI test files are located in the `integration_test` folder.
As we cannot use the flutter widget test to make HTTP calls, we used the integration test method, which is slower but more efficient, to test every state in the application.
The `ui_test.dart` file contains a tests group to test most case scenarios.

To perform the UI testing, simply execute the following command:

    $ flutter test integration_test/ui_test.dart

Select the device you want to test on if prompted, in case of multiple devices are connected.

If the output shows `All tests passed`, the application is safe to publish otherwise something goes wrong.
<br/>

## Build with docker
Since we're using an Ubuntu 18 based image to build the project, it is impossible to build iOS application because it requires xCode to be installed which is only available on macOS, just Android apk.

The `Dockerfile` is in the project root folder. This will create an ubuntu based image and install the environment to build the app. Also, will create a script to automate the build by cleaning project and build it.

The container will make changes directly to the host's project working directory.

The script responsible building with docker is `build_using_docker.sh`.

First, make the script executable:

    $ sudo chmod +x build_using_docker.sh

Let's explore the script:

    #!/bin/bash  
	docker build -t flutter_docker .  
	docker run  -it -d -v /var/run/docker.sock:/var/run/docker.sock --name flutter_container --privileged -v "$(pwd)":/home/developer/app flutter_docker  
	docker exec -it flutter_container ../build.sh  
	docker container stop flutter_container  
	docker container rm flutter_container
<br/>

First, we build a docker image called `flutter_docker` from the Dockerfile if it doesn't exist.

    docker build -t flutter_docker . 

Next, run the image in the background in a container called `flutter_container`.

    docker run  -it -d -v /var/run/docker.sock:/var/run/docker.sock --name flutter_container --privileged -v "$(pwd)":/home/developer/app flutter_docker

In my case, on macOS, I have to add `-v /var/run/docker.sock:/var/run/docker.sock` to start the container without issues. 

After the container starts, the build script `build.sh` will be executed to build release apk.

    docker exec -it flutter_container ../build.sh  

Finally, we stop and remove the container.

    docker container stop flutter_container  
	docker container rm flutter_container

<br/><br/>
In case of misunderstanding, mismatching with the test requirements or something missing, feel free to email me: [elleuch.amiirr@gmail.com](mailto:elleuch.amiirr@gmail.com).
Thank you.

## Credits
[Flutter](http://flutter.io): For this awesome framework.  
[Microsoft](https://microsoft.com): For the Powerapps Dataverse.  
[Docker](https://docker.com): For providing the containers environment.

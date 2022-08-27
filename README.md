# Nova Setup

Contains dockerfiles, scripts and other files to set up a Nova development environment.


## Images in this repo

### nova-dev-base
A basic Ubuntu 18.04 system with some general dependencies.  
Includes python, C++, vim, nano, and a user called nova-dev with sudo priveleges.  
Has access to a nova_ws folder on the host, and has access to the host's SSH info for using git.  

### nova-dev-ros2
A (mostly) complete Ubuntu 18.04 Nova development environment.  
Includes everything from nova-dev-base, and has all the Nova repos set up by default and all dependencies (except the GUI, but including KDL) installed.  
Has access to a nova_ws folder on the host, and has access to the host's SSH info for using git.  
Is not fully secure - consider running untrusted code within this container as running it on your machine directly


## Using an image

### Setup
1. Install Docker (https://docs.docker.com/engine/install/ubuntu/) and Docker Compose (https://docs.docker.com/compose/install/)
2. Set up git pull / push from github/com/MonashNovaRover on your device using SSH. This will be used within the container to interact with the Nova repos
3. Create a folder called nova_ws somewhere on your system. For example, I put mine in ~/Nova/nova_ws
4. Clone the nova_setup repo into the same parent folder as nova_ws. For example, I put mine in ~/Nova/nova_setup
5. Change into the nova_setup directory and run the git setup script to clone all the Nova repos
    ```
    ./git-setup.sh
    ```
    If nova_ws is nested within a git repo, then include the '-s' option to add the Nova repos as submodules
    ```
    ./git-setup.sh -s
    ```

### Starting containers
To create or start a container, change to the container directory and run the compose-run-\<container-nickname\> script.
Creates the container in your current terminal with access to nova_ws for source code and to your ~/.ssh folder so you can use git.
For example,
```   
cd nova_setup/nova-dev-ros2
./compose-run-ros2.sh
```
 
To create additional container terminals, just open a new terminal and run
```
./compose-run-<container-nickname>.sh
```

When within a container, you essentially have access to a complete Ubuntu system.
All files in the nova_ws directory are shared between the host system and the container, so you can develop on the host, save, and then build and run in the container.
You can also make changes within the container such as installing new packages or creating / deleting files.
Any changes made outside of the nova_ws diretcory will stay only in the container and will not be accessible on the host.

### Using git within a container
If it is the first time you've used git in a container you will need to set the git global config info before you commit or push.
```
git config --global user.name "Your name"
git config --global user.email "your@email.com"
```
 
### Exiting containers
To exit a container terminal (without destroying it), run
```
exit
```

This keeps the container running in the background, so you can later run ./compose-run-\<container-nickname\>.sh and pick up where you left off.
 
To stop all container instances (without destroying the container), open a host terminal in the container directory and run
```    
sudo docker-compose stop
```
 
This saves the state of the container, so you can later run ./compose-run-\<container-nickname\>.sh and pick up where you left off.

To destroy all container instances, open a host terminal in the container directory and run
```    
sudo docker-compose down
```

This is really only necessary when you want to update the container image. Any changes made within the container will be lost.
    
## Updating an image
If a new image has been released, follow these steps to get the new image and run the updated container.
1. Destroy the old container. Note this will also permanently delete any changes made locally within the container.
    ```
    sudo docker rm -f <container-name>
    ```
    For example,
    ```
    sudo docker rm -f nova-dev-ros2
    ```
2. Update the image.
    ```
    sudo docker pull jorza/<container-name>
    ```
3. Start the updated container as normal (see Starting Containers)

## Creating an image

This is not necessary for installation or use. Talk to the repo maintainers if you find an issue with a container.

0. Install Docker
1. Create a DockerHub account
2. Clone the nova_setup repo anywhere on your system
3. For nova-dev-ros2 only: Set up git pull / push from github/com/MonashNovaRover on your device using SSH, then copy ~/.ssh to nova_setup/nova-dev-ros2/.ssh  
    This is used during the container setup to clone all the Nova repos
4. Run the build-image script  
    Builds the image from the relevant Dockerfile and pushes it to your DockerHub account.  
    Pass in the name of the folder where the Dockerfile is located, and your DockerHub username.

    For example,
    ```  
    ./build-image.sh nova-dev-ros2 <dockerHubUserName>
    ```
    If your DockerHub user name is the same as your current Ubuntu user
    then you can omit the last argument.

    For example,
    ```
    ./build-image.sh nova-dev-ros2
    ```

## Other scripts
### Git repo setup
Run to clone all Nova repos into ../nova_ws/. If some repos already exist, they will not be affected.
```
git-setup.sh
```

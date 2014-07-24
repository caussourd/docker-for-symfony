## Docker for Symfony website - based on CentOS6 image

### To make it work

- Build the image
From inside this folder: 
`# docker build -t="<user>/<name>:<tag>" .`

- The code is on a separate folder (not in the container). Example: /home/<myuser>/<myapp>
 
- Create a log folder in your app folder. It's where the Apache logs are going to be stored 
Example: `mkdir /home/<myuser>/<myapp>/log`

- Give the permissions to Apache on the folder (48 is the Apache UID in the container): 
Example: `chown -R 48:48 /home/<myuser>/<myapp>`

- Run the container
`docker run -d -p 80:80 -v /home/<myuser>/<myapp>:/var/www <user>/<name>:<tag>`

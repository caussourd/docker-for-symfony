## Docker for Symfony website - based on CentOS6 image

### To make it work

#### Requirements

 - fig

To install fig: http://www.fig.sh/install.html

#### Add your code

Add your code in a folder called `web/`

#### Start the app

`fig run -d`

#### Good to know

 - Stop the app: `fig stop`
 - Remove the app: `fig rm`
 - Rebuild the app: `fig build`

#### Troubleshooting

##### Permissions

You may need to change the permissions on the web folder.

Example (48 is the Apache UID in the container): `chown -R 48:48 web/`

##### Database

Note: the database host in your app configuration shouldn't be set to localhost (localhost is the container)

Improvements: a container could be created for the DB and linked to the `symfony` container

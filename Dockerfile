FROM gregory90/goose

# mount the app
ADD . /opt/db

# set the working directory to /opt/
WORKDIR /opt/

# define goose as the entrypoint
ENTRYPOINT ["/opt/goose", "-env=default"]
CMD ["-path=db/migrations", "up"]

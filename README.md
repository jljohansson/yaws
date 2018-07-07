# ejojmjn-yaws

docker build -t ejojmjn-yaws .

docker run -it --net=host \
    -v /home/ejojmjn/yaws-config:/etc/yaws \
    -v /home/ejojmjn/Downloads/smm:/var/yaws/www \
    ejojmjn-yaws

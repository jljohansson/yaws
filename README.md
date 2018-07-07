# ejojmjn-yaws

docker build -t ejojmjn-yaws .

docker run -it --net=host -p 80:80 \
    -v /home/ejojmjn/smmtester/yaws-config:/etc/yaws \
    -v /home/ejojmjn/smmtester/www:/var/yaws/www \
    ejojmjn-yaws

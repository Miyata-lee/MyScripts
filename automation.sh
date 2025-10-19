echo "users are creating"
sudo useradd lee -m -s /bin/bash && echo "lee:123" | sudo chpasswd

for user in {1..5};
do  
    username="base$user"
    sudo useradd -m "$username" && echo "$username:123" | chpasswd
done

sudo systemctl stop httpd || echo "httpd not installed"

# Collect logs
mkdir -p /home/ec2-user/logs
echo "Test log entry at $(date)" >> /home/ec2-user/logs/test.log

echo "✅ Automation script complete"

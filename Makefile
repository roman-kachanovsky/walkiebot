dummy_task:
	echo "Better specify a concrete task, dude..."

shell:
	ssh -C -i ~/.ssh/rt_old_staging.pem ubuntu@54.69.110.221

restart:
	ssh -i ~/.ssh/rt_old_staging.pem ubuntu@54.69.110.221 'sudo docker stop walkiebot_web_1 walkiebot_mongodb_1 && cd ~/walkiebot && sudo docker-compose up -d'

stop:
	ssh -i ~/.ssh/rt_old_staging.pem ubuntu@54.69.110.221 'sudo docker stop walkiebot_web_1 walkiebot_mongodb_1'

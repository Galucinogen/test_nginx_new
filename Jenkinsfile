pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
			          sh 'curl -H "Content-Type: application/json" --data '{"latest": "master"}' -X POST https://registry.hub.docker.com/u/test11aa/test_nginx_new/trigger/e982159e-2d31-4810-b72c-2da89dc2c4c7/'
		    	      echo  'Starting sleep'
			          sh 'sleep 2m'
			          echo  'Finished sleep'
			          sh 'docker run --name mynginx2 -p 8080:80 -d test11aa/test_nginx_new'
            }
        }
    }
}

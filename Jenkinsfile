pipeline {
    agent any

    stages {
        stage('info') {
            steps {
                sh '''
                    id
                    pwd
                    ls -lah
                '''
            }
        }
             /* stage('clone') {
            steps {
                sh script: "rm -rf $params.git_repo_name*"
                sh """
                    pwd
                    ls -alh
                    git clone "$params.git_repo_http_url"
                """
            }
        } */
        stage('Build') {
            steps {
                echo ('Build stages....')
                dir("$params.git_repo_name") {
                    echo 'building docker image ....'
                    sh script: "docker build -t $params.docker_image_name:latest ."
                }
                
            }
        }
        stage('Test') {
            steps {
                echo ('testing stages....')
            }
        }
        stage('Deploy') {
            steps {
                echo ('Deploy stages....')
                sh script: "docker stop $params.docker_image_name"
                sh script: "docker rm $params.docker_image_name"
                sh script: "docker run -d -p 80:$params.container_port --name $params.container_name $params.docker_image_name:latest"
                sh script: "docker ps"
                echo "docker container with name $params.container_name deployed sucessfully......"
            }
        }
    }
}

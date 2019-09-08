node {
    withDockerContainer(args: '-v /root/.m2:/root/.m2\'', image: 'maven:3-alpine') {
        stage ('Build' ) {
        
            git branch: 'master', url: '/home/docker/simple-java-maven-app'
	    	sh 'mvn -B -DskipTests clean package'
            
        }
        stage('Test') {
            sh 'mvn -B test'
            junit 'target/surefire-reports/*.xml'
        }
    }
    stage('Build Image') {
        app = docker.build ("simple-java-maven-app-docker")
    }
		
}

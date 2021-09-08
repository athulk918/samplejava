pipeline {
    
    agent any
    
    tools {
  maven 'maven 3'
}

    stages{
        
        stage("checkout") {
            
            steps {
                git credentialsId: 'github', url: 'https://github.com/athulk918/samplejava.git'
            }
            
        }
        
        stage ("build") {
            
            steps {
                sh "mvn clean package"
            }
        }
        
        stage ("push to nexus") {
            
            steps {
                nexusArtifactUploader artifacts: [[artifactId: 'javaee7-simple-sample', classifier: '', file: 'target/javaee7-simple-sample.war', type: 'war']], credentialsId: 'nexus', groupId: 'org.javaee7.sample', nexusUrl: 'ec2-18-220-118-22.us-east-2.compute.amazonaws.com:8081', nexusVersion: 'nexus3', protocol: 'http', repository: 'maven-snapshots', version: '4.0-SNAPSHOT'
            }
        }
    }
}


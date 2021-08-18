pipeline {
    agent any

    tools {nodejs "NodeJS_15_8"}
    
    stages {
        stage("cleaning") {
            steps {
                deleteDir()
            }
        }
        stage("cloning") {
            steps {
                sh "git clone https://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@github.com/Jazo74/Hitzz_server.git"
            }
        }
        stage("build step") {
            steps {
                dir("Hitzz_server") {
                    sh "npm install"
                }
            }
        }
    }
}

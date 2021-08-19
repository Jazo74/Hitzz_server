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

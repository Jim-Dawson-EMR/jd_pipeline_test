pipeline {
    agent {
        label 'windows'
    }

    stages {
/*        stage("checkout"){
            steps {
                git branch: 'main', 
                    url: 'https://github.com/Jim-Dawson-EMR/jd_pipeline_test.git', 
                    credentialsId: 'PAT for Jenkins-Azure-Subscription-Tagging'
            }
        }*/
        stage("Execute"){
            steps {
                powershell 'dir'
                powershell '.\script.ps1'
            }
        }
    }
    post {
        always {
            //emailext body: 'testing body', subject: 'test', to: 'jim.dawson@emerson.com'
            echo "done"
        }
    }
}
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

                    sh(script: 'echo "This is the output."', returnStdout: true).trim()

            }
        }*/
        stage("Execute"){
            steps {
                psout = powershell ( returnStdout: true, script:'.\\script.ps1')
                //env.psout = ${psout}
            }
        }
    }
    post {
        always {
            // One or more steps need to be included within each condition's block.
            echo "$env:psout"

        }
        unsuccessful {
                //emailext body: 'testing body', subject: 'test', to: 'jim.dawson@emerson.com'
                echo "Failed. ${env.JOB_NAME} ${env.BUILD_NUMBER} ${env.BUILD_URL}" 
        }
    }
}
/*        always {
            //emailext body: 'testing body', subject: 'test', to: 'jim.dawson@emerson.com'
            echo "done"
        } */

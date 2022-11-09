node('maven') {
        stage('Git checkout') { // for display purposes
        // Get some code from a GitHub repository
       git branch: 'main', credentialsId: 'f2a21285-619c-43bf-9652-5fa30c27c559', url: 'https://github.com/vishalrs18/Sample-codes.git'
    }
    stage('Build') {
        withCredentials([string(credentialsId: 'sonar-code', variable: 'sonar1')]) {
                sh """
                     mvn clean verify sonar:sonar \
                    -Dsonar.login=$sonar1 \
                    -Dsonar.host.url=https://sonarcloud.io \
                    -Dsonar.organization=demo09 \
                    -Dsonar.projectKey=proj18 """
        }
    }
    stage('jfrog') {
        withCredentials([usernamePassword(credentialsId: 'jfrog', passwordVariable: 'passd', usernameVariable: 'vishal')]) {
            sh "mvn clean deploy -s settings.xml -Drepo.username=$vishal -Drepo.password=$passd"
        }
    }
    stage('deploy to servers') {
    sh "ansible-playbook deployfile.yaml"
    }
} 

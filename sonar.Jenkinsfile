node ('deploy') {
    
    stage ('git checkout step') {
        git branch: 'main', credentialsId: 'f2a21285-619c-43bf-9652-5fa30c27c559', url: 'https://github.com/vishalrs18/Sample-codes'
    }
    
    stage ('maven build step') {
        def TOOL = tool name: 'maven-1', type: 'maven'
        withEnv(["PATH=$TOOL/bin:$PATH"]) {
            withCredentials([string(credentialsId: 'sonar-code', variable: 'sonar')]) {
             sh '''
                     mvn clean verify sonar:sonar \
                    -Dsonar.login=$sonar \
                    -Dsonar.host.url=https://sonarcloud.io \
                    -Dsonar.organization=springboot-code \
                    -Dsonar.projectKey=hello-world18
                    '''
                }
            }
   }
   }

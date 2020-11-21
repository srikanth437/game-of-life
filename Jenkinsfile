pipeline {
   agent any
   parameters{
       string(name: 'BUILD_BRANCH', defaultValue: 'master' )
   }
        
   stages{
       stage('git clone'){
           steps{
               git url: 'https://github.com/devops-surya/game-of-life.git'  , git branch: '$BUILD_BRANCH'
           }        
       }
       stage('build the code'){
           steps{
              sh 'mvn package'
              input ( next step ?)
           }
       }
       stage('archive the artifacts'){
           steps{
              archiveArtifacts artifacts: 'gameoflife-web/target/*.war', followSymlinks: false
           }          
       }
       stage('publish the junit reports'){
           steps{
              junit 'gameoflife-web/target/surefire-reports/*.xml'
           }
           
       }

   }
}

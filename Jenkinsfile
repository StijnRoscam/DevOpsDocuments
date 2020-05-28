pipeline {
agent any 
  stages {
    stage('Restore packages'){
      steps{
        //bat "dotnet restore \"C:\\Users\\Administrator\\workspace\\APIpipeline\\CloudApiScoutsleiding\\CloudApiScoutsleiding\\CloudApiScoutsleiding.csproj"
        sh "dotnet restore /var/jenkins_home/workspace/APIpipeline/CloudApiScoutsleiding/CloudApiScoutsleiding/CloudApiScoutsleiding.csproj"
      }
    }
    stage('Clean'){
      steps{
        //bat "dotnet clean \"C:\\Users\\Administrator\\workspace\\APIpipeline\\CloudApiScoutsleiding\\CloudApiScoutsleiding\\CloudApiScoutsleiding.csproj"
        sh "dotnet clean /var/jenkins_home/workspace/APIpipeline/CloudApiScoutsleiding/CloudApiScoutsleiding/CloudApiScoutsleiding.csproj"
      }
    }
    stage('Build'){
      steps{
        //bat "dotnet build \"C:\\Users\\Administrator\\workspace\\APIpipeline\\CloudApiScoutsleiding\\CloudApiScoutsleiding\\CloudApiScoutsleiding.csproj"
        sh "dotnet build /var/jenkins_home/workspace/APIpipeline/CloudApiScoutsleiding/CloudApiScoutsleiding/CloudApiScoutsleiding.csproj"
      }
    }
    stage('Test'){
      steps{
        echo 'Testing ...'
      }
    }
    stage('Publish'){
      steps{
        sh "dotnet publish /var/jenkins_home/workspace/APIpipeline/CloudApiScoutsleiding/CloudApiScoutsleiding/CloudApiScoutsleiding.csproj"
      }
    }
    stage('Deploy'){
      steps{
        ansiblePlaybook(
          installation: 'ansible_installation',
          inventory: '/var/jenkins_home/workspace/APIpipeline/ansible/inventory.ini',
          playbook: '/var/jenkins_home/workspace/APIpipeline/ansible/api_playbook.yml'
        )
      }
    }
  }
}


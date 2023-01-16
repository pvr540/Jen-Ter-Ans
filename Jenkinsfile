pipeline{
    agent any
    environment {
        PATH = "${PATH}:${getTerraformPath()}"
    }
    stages{
        stage('terraform init and apply - dev '){
            steps{
                sh returnStatus: true, script: 'terraform workspace new dev'
                sh "terraform init"
                sh "terraform plan -var-file=dev.tfvars"
            }
        }
        stage('terraform init and apply - prd '){
            steps{
                sh returnStatus: true, script: 'terraform workspace new prd'
                sh "terraform init"
                sh "terraform plan -var-file=prod.tfvars"
            }
        }
    }
}
def getTerraformPath(){
    def tfHome = tool name: 'terraform-mine', type: 'terraform'
    return tfHome
}
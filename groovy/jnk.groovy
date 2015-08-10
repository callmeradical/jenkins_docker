import jenkins.model.*
def project = 'callmeradical/jenkins_docker'
def branchName = 'master'
job {
  name "${project}-${branchName}".replaceAll('/','-')
  scm {
    git("git://github.com/${project}.git", branchName)
  }
  steps {
  }
}

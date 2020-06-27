# Docker Hugo Builder
A container with tools installed to build a Hugo site. Intended for use with CI/CD like Jenkins on Kube.

## Example Jenkinsfile
```
podTemplate(
    containers: [
      containerTemplate(name: 'hugo-build', image: 'your-name/hugo-build:latest', ttyEnabled: true, command: 'cat')
    ]
    )
{
  node(POD_LABEL) {
    stage('Grab Code') {
        checkout scm
    }

    stage('Build the Site') {
      container('hugo-build'){
        sh 'hugo'
      }
    }
  }
}
```

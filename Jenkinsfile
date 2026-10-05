pipeline {
    agent any

    stages {
        stage('Preparation') {
            steps {
                echo 'Подготовка рабочей области...'
                sh 'pwd'
                sh 'ls -la'
            }
        }

        stage('Build') {
            steps {
                echo 'Сборка проекта...'
                sh 'rm -rf build && mkdir -p build'
                sh 'cp index.html build/index.html'
            }
        }

        stage('Test') {
            steps {
                echo 'Тестирование проекта...'
                sh 'chmod +x test.sh'
                sh './test.sh'
            }
        }

        stage('Package') {
            steps {
                echo 'Создание артефакта сборки...'
                sh 'tar -czf pr4-demo-site.tar.gz build'
                archiveArtifacts artifacts: 'pr4-demo-site.tar.gz', fingerprint: true
            }
        }
    }

    post {
        success {
            echo 'Pipeline успешно завершён.'
        }
        failure {
            echo 'Pipeline завершился с ошибкой. Проверьте Console Output.'
        }
        always {
            echo "Завершена сборка №${env.BUILD_NUMBER}"
        }
    }
}

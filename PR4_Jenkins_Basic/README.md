# Практическая работа №4 — Jenkins Pipeline

Минимальный демонстрационный проект для обычного варианта ПР №4.

## Состав репозитория

- `index.html` — исходный файл проекта;
- `test.sh` — простой сценарий проверки результата сборки;
- `Jenkinsfile` — декларативный Jenkins Pipeline;
- `README.md` — описание проекта.

## Этапы Pipeline

1. `Preparation` — проверка рабочей области.
2. `Build` — формирование каталога `build`.
3. `Test` — запуск проверочного сценария.
4. `Package` — упаковка результата в `pr4-demo-site.tar.gz` и сохранение артефакта.

## Настройка Jenkins

Создайте Pipeline и выберите **Pipeline script from SCM**:

- SCM: Git
- Repository URL: URL вашего GitHub-репозитория
- Branch Specifier: `*/main`
- Script Path: `Jenkinsfile`

После сохранения нажмите **Build Now**.

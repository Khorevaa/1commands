# language: ru

Функциональность: Выполнение команды

Как разработчик
Я хочу иметь возможность выполнять команды
Чтобы я мог проще автоматизировать больше действий на OneScript

Контекст: Отключение отладки в логах
    Допустим Я выключаю отладку лога с именем "oscript.lib.commands"

Сценарий: Выполнение команды без параметров
    Когда Я выполняю команду "git"
    Тогда Вывод команды "git" содержит "[--version]"
    И Код возврата команды "git" равен 1

Сценарий: Выполнение команды с параметрами
    Когда Я добавляю параметр "--version" для команды "git"
    И Я выполняю команду "git"
    Тогда Я сообщаю вывод команды "git"
    И Вывод команды "git" содержит "version"
    И Код возврата команды "git" равен 0

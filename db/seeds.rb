# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Создаем школы
school1 = School.create!(name: "Школа №1")
school2 = School.create!(name: "Школа №2")
school3 = School.create!(name: "Школа №3")

# Создаем классы для каждой школы
class_book_1_school_1 = school1.class_books.create!(number: 1, letter: "A", students_count: 28)
class_book_2_school_1 = school1.class_books.create!(number: 2, letter: "Б", students_count: 36)
class_book_1_school_2 = school2.class_books.create!(number: 1, letter: "A", students_count: 23)
class_book_2_school_2 = school2.class_books.create!(number: 2, letter: "Б", students_count: 26)
class_book_1_school_3 = school3.class_books.create!(number: 1, letter: "A", students_count: 27)
class_book_2_school_3 = school3.class_books.create!(number: 2, letter: "Б", students_count: 30)

# Создаем учеников для каждого класса
class_book_1_school_1.students.create!([
                                          { first_name: "Андрей", last_name: "Андреевич", surname: "Андреев" },
                                          { first_name: "Анжелика", last_name: "Артемовна", surname: "Анжеликина" },
                                          { first_name: "Александр", last_name: "Александрович", surname: "Александров" },
                                          { first_name: "Анастасия", last_name: "Афанасьевна", surname: "Афанасьева" }
                                        ])

class_book_2_school_1.students.create!([
                                          { first_name: "Борис", last_name: "Борисович", surname: "Борисов" },
                                          { first_name: "Брунгильда", last_name: "Григорьевна", surname: "Григорьева" },
                                          { first_name: "Василиск", last_name: "Петрович", surname: "Бакунин" },
                                          { first_name: "Галесвинта", last_name: "Николаевна", surname: "Николаева" }
                                        ])

class_book_1_school_2.students.create!([
                                          { first_name: "Ананий", last_name: "Ананьевич", surname: "Ананьев" },
                                          { first_name: "Даздраперма", last_name: "Гавриловна", surname: "Гаврилова" },
                                          { first_name: "Демир", last_name: "Демирович", surname: "Демиров" },
                                          { first_name: "Ляля", last_name: "Петровна", surname: "Полкило" }
                                        ])

class_book_2_school_2.students.create!([
                                          { first_name: "Ким", last_name: "Чен", surname: "Ын" },
                                          { first_name: "Мария", last_name: "Макаровна", surname: "Макарова" },
                                          { first_name: "Ким", last_name: "Чен", surname: "Ир" },
                                          { first_name: "Филофея", last_name: "Егоровна", surname: "Егорова" }
                                        ])

class_book_1_school_3.students.create!([
                                          { first_name: "Владимир", last_name: "Ильич", surname: "Ленин" },
                                          { first_name: "Кира", last_name: "Леонтьевна", surname: "Найтли" },
                                          { first_name: "Иван", last_name: "Иванович", surname: "Иванов" },
                                          { first_name: "Скарлет", last_name: "Викторовна", surname: "Плюшкина" }
                                        ])

class_book_2_school_3.students.create!([
                                          { first_name: "Мирослав", last_name: "Мирославович", surname: "Мирославов" },
                                          { first_name: "Матильда", last_name: "Ашотовна", surname: "Ашотова" },
                                          { first_name: "Михаил", last_name: "Михайлович", surname: "Михайлов" },
                                          { first_name: "Анна", last_name: "Петровна", surname: "Петрова" }
                                        ])

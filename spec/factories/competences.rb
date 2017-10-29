FactoryBot.define do
  factory :competence do
    title "Поддержание здоровья"
    description "Поддержание здоровья на необходимом уровне, чтобы хватало энергии"

    factory :invalid_competence do
      title nil
      description 'Веб-разрабатываем!'
    end

    factory :other_valid_competence do
      title "Приготовление фруктового салата"
      description "Вкусшейший салат из яблок, моркови и изюма"
    end
  end
end

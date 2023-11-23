def word_count(s)
  # Розділити рядок на слова
  words = s.split

  # Ініціалізувати порожній хеш для зберігання кількості кожного слова
  word_count_hash = Hash.new(0)

  # Обчислити кількість кожного слова
  words.each do |word|
    # Видалити символи пунктуації
    word = word.gsub(/[.,!?(){}"']/, '')

    # Перетворити слово у нижній регістр для уніфікації
    word = word.downcase

    # Збільшити кількість слова у хеші
    word_count_hash[word] += 1
  end

  return word_count_hash
end

# Приклад використання
input_string = "Це речення має кілька слів. Це речення також має кілька слів."
result = word_count(input_string)
puts result
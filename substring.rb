def substrings(word, dictionary)
  # Inicialize um hash para armazenar os resultados
  result = Hash.new(0)

  # Converta a palavra de entrada e o dicionário para letras minúsculas para tornar a comparação insensível a maiúsculas e minúsculas
  word = word.downcase

  # Itere sobre cada palavra do dicionário
  dictionary.each do |substring|
    # Converta a substring para letras minúsculas
    substring = substring.downcase

    # Verifique se a substring está presente na palavra de entrada
    # Use a função count para contar o número de ocorrências da substring na palavra
    count = word.scan(substring).count

    # Se a substring estiver presente, adicione-a ao resultado com a contagem
    result[substring] += count if count > 0
  end

  # Retorne o resultado
  result
end

# Exemplo de uso:
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
# Metodo conversor
def conversor(dolares, divisa)
  cambio = obtener_divisas(divisa)
  if cambio
    resultado = dolares * cambio
    puts "La conversion a peso #{divisa} es $#{resultado}"
  else
    puts "Esta divisa no es valida"
  end
end

#Metodo obtener_divisas
def obtener_divisas(divisa)
  case divisa
  when "chile"
      796.40
  when "mexico"
      17.40
  when "colombia"
      4249.00
  else
    null
  end
end

#Solicitar datos
puts "Ingresa la cantidad de dólares a convertir"
dolares = gets.chomp.to_f

#Solicitar divisa
puts "Ingresa la divisa: chile, mexico, colombia"
divisa = gets.chomp.downcase

#Entregar datos
conversor(dolares, divisa)
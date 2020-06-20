jugador = ARGV[0].downcase.chomp

if (jugador != 'piedra' && jugador != 'papel' && jugador != 'tijera')
    puts 'Argumento invalido: Debe ser piedra, papel o tijera'
else
    computador = rand(0..2) # 0 ==> piedra 1==> papel 2 ==> tijera   
    if computador == 0
        computador = 'piedra'
    elsif computador == 1
        computador = 'papel'
    else
        computador = 'tijera'
    end
    puts "Computador juega #{computador}"
    if jugador == computador
        puts 'Empataste'
    elsif (jugador == 'tijera' && computador == 'piedra') || (jugador == 'piedra' && computador == 'papel') || (jugador == 'papel' && computador == 'tijera')
        puts 'Perdiste'
    else
        puts 'Ganaste'
    end
end

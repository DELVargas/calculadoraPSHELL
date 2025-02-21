function Calcular {
    Write-Host "Escolha uma operação:"
    Write-Host "1. Adição"
    Write-Host "2. Subtração"
    Write-Host "3. Multiplicação"
    Write-Host "4. Divisão"

    $operacao = Read-Host "Digite o número da operação (1/2/3/4)"  # Recebe a operação escolhida pelo usuário.

    # Recebe os números de entrada do usuário e tenta convertê-los
    try {
        $num1 = [float](Read-Host "Digite o primeiro número")
        $num2 = [float](Read-Host "Digite o segundo número")
    } catch {
        Write-Host "Por favor, insira números válidos." # Caso o usuário insira algo que não seja número.
        return
    }

    # Realiza a operação escolhida
    if ($operacao -eq '1') {
        $resultado = $num1 + $num2
        Write-Host "O resultado da adição é: $resultado"
    } elseif ($operacao -eq '2') {
        $resultado = $num1 - $num2
        Write-Host "O resultado da subtração é: $resultado"
    } elseif ($operacao -eq '3') {
        $resultado = $num1 * $num2
        Write-Host "O resultado da multiplicação é: $resultado"
    } elseif ($operacao -eq '4') {
        if ($num2 -ne 0) {
            $resultado = $num1 / $num2
            Write-Host "O resultado da divisão é: $resultado"
        } else {
            Write-Host "Erro! Não é possível dividir por zero."
        }
    } else {
        Write-Host "Operação inválida. Tente novamente."
    }
}

# Loop principal para permitir múltiplas operações
do {
    Calcular
    $continuar = Read-Host "Deseja realizar outra operação? (sim/não)"
} while ($continuar -eq 'sim')

Write-Host "Obrigado por utilizar a calculadora!"

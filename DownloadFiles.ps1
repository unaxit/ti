# Lista de URLs dos arquivos no Google Drive
$files = @{
    '1. Advanced SystemCare Pro 17' = 'https://drive.google.com/uc?id=1ZqH801sUbYBkOdiV8WpqnX2xHyeV1T3f'
    '2. Driver Booster Pro 11' = 'https://drive.google.com/uc?id=1qRLge7rO1jE4cemjyg1IOM1lFws9ZfCR'
    '3. Malware Fighter Pro 11' = 'https://drive.google.com/uc?id=1v6dUAbFQnD5V4NV7RBOOKaRpfNDgikMb'
    '4. Software Updater Pro 6' = 'https://drive.google.com/uc?id=1TWMcHDYSpUKINKIvX0EMddj3IM0tXlIT'
    '5. Uninstaller Pro 13' = 'https://drive.google.com/uc?id=1QBu07xpBp3WK8P_ltr7vtDAB-1ucnZH7'
    '6. Microsoft Activation Scripts' = 'https://drive.google.com/uc?id=1bFoFl4Vb8UMwcDmDErjya9aBiDbTU95F'
}

# Exibir o menu dinâmico no CMD
foreach ($key in $files.Keys) {
    Write-Host "$key"
}

# Solicitar a escolha do usuário
$choice = Read-Host "Escolha o número do arquivo para download"

# Validar a escolha e fazer o download
if ($files.ContainsKey($choice)) {
    $fileUrl = $files[$choice]
    $destinationPath = "$env:USERPROFILE\Downloads\$choice"

    # Fazer o download do arquivo escolhido
    Invoke-WebRequest -Uri $fileUrl -OutFile $destinationPath

    Write-Host "Arquivo baixado com sucesso para: $destinationPath"
} else {
    Write-Host "Opção inválida."
}

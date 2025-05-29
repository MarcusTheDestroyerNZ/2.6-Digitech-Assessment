Write-Host "Choose an action:"
Write-Host "  1) RunServer (localhost)"
Write-Host "  2) Tailwind Watcher"
Write-Host "  3) Enter venv"
Write-Host "  4) Install dependencies"

$choice = Read-Host "Enter the number of your choice"

switch ($choice) {
    "1" {
        Write-Host "Running runserver (localhost)..."
        python main.py
    }
    "2" {
        Write-Host "Running Tailwind Watcher..."
        npx @tailwindcss/cli -i .\static\input.css -o .\static\output.css --watch
    }
    "3" {
        Write-Host "Activating virtual environment..."
        .\venv\Scripts\Activate.ps1
        Write-Host "Virtual environment activated. You can now run Python commands."
    }
    "4" {
        Write-Host "Installing dependencies..."
        python -m pip install -r requirements.txt
    }
    default {
        Write-Host "Invalid choice. Please run the script again and choose a valid option."
    }
}
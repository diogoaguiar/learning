<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AlpineJS</title>
    <script src="//unpkg.com/alpinejs" defer></script>
</head>
<body>
    <div x-data="{ message: 'Hello' }">
        <h1 x-text="message"></h1>
        <input type="text" x-model="message">
    </div>
</body>
</html>
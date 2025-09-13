# 📱 Scripts de Desarrollo Flutter

## 🔧 Comandos Útiles

### Verificar dispositivos conectados
```bash
flutter devices
adb devices
```

### Ejecutar en dispositivo físico
```bash
flutter run
# o específicamente para Android:
flutter run -d android
```

### Hot Reload (sin reiniciar la app)
- Presiona `r` en la terminal
- O guarda el archivo en VS Code

### Hot Restart (reinicia la app)
- Presiona `R` en la terminal

### Ver logs en tiempo real
```bash
flutter logs
```

### Compilar APK de debug
```bash
flutter build apk --debug
```

### Compilar APK de release
```bash
flutter build apk --release
```

### Limpiar proyecto
```bash
flutter clean
flutter pub get
```

### Analizar código
```bash
flutter analyze
```

### Ejecutar tests
```bash
flutter test
```

## 🐛 Debugging

### Inspector de widgets
```bash
flutter run --debug
# Luego presiona 'w' para abrir el inspector
```

### Mostrar bordes de debug
- Presiona `p` mientras la app está corriendo

### Performance overlay
- Presiona `P` mientras la app está corriendo

## 📋 Tips de Desarrollo

1. **Hot Reload**: Guarda tu archivo para ver cambios instantáneos
2. **Logs**: Usa `print()` para debug rápido
3. **Inspector**: Usa `flutter inspector` para debugging visual
4. **Emulador**: Si no tienes dispositivo físico, crea un emulador Android
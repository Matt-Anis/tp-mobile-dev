# tp1

A Flutter project that displays and rotates an image.

## Image Configuration

**IMPORTANT:** You must configure your own image for this app to work properly.

### Steps:

1. **Add your image** to the `assets/images/` folder
2. **Note the exact filename and extension** (e.g., `myimage.jpg`, `photo.png`, `picture.jpeg`)
3. **Update the image reference** in `lib/main.dart` at **line 33**:
   ```dart
   final _image = Image.asset('assets/images/image.png');
   ```
   Change `'assets/images/image.png'` to match your actual filename.

### Important Notes:
- ⚠️ **The filename must match exactly** (including the extension)
- ⚠️ **Pay attention to the file extension** (.png, .jpg, .jpeg, etc.)
- ⚠️ The path should always start with `assets/images/`

### Example:
If your image is named `sunset.jpg`, update line 33 to:
```dart
final _image = Image.asset('assets/images/sunset.jpg');
```

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;


class camera extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Camera Upload Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PhotoUploadPage(),
    );
  }
}

class PhotoUploadPage extends StatefulWidget {
  @override
  _PhotoUploadPageState createState() => _PhotoUploadPageState();
}

class _PhotoUploadPageState extends State<PhotoUploadPage> {
  File? _image;

  Future<void> _takePhoto() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);

    if (image != null) {
      setState(() {
        _image = File(image.path);
      });
    }
  }

  Future<void> _uploadPhoto() async {
    if (_image == null) return;

    final uri = Uri.parse('https://your-api-endpoint.com/upload'); // Change to your upload API endpoint
    final request = http.MultipartRequest('POST', uri);

    request.files.add(await http.MultipartFile.fromPath('file', _image!.path));

    try {
      final response = await request.send();
      if (response.statusCode == 200) {
        print('Photo uploaded successfully!');
      } else {
        print('Failed to upload photo. Status code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error uploading photo: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Camera Upload Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _image == null
                ? Text('No image selected.')
                : Image.file(_image!),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _takePhoto,
              child: Text('Take Photo'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: _uploadPhoto,
              child: Text('Upload Photo'),
            ),
          ],
        ),
      ),
    );
  }
}